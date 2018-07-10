import 'package:flutter/material.dart';

import '../Bloc.dart';
import '../Provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return Card(
      child: Container(
        child: Column(
          children: <Widget>[
            emailField(bloc),
            passwordField(bloc),
            Container(
              margin: EdgeInsets.only(top: 15.0),
            ),
            submitButton(bloc),
          ],
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'someone@example.com',
            labelText: 'Email',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: '*******',
            labelText: 'Password',
            errorText: snapshot.error,
          ),
          obscureText: true,
        );
      },
    );
  }

  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (context, snapshot) {
        return RaisedButton(
          onPressed: snapshot.hasData ? bloc.submit : null,
          child: Text('Login'),
          color: Colors.white,
          textColor: Colors.black,
        );
      },
    );
  }
}
