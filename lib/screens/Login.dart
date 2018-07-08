import 'package:flutter/material.dart';

import '../blocs/Bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(
              margin: EdgeInsets.only(top: 15.0),
            ),
            submitButton(),
          ],
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'someone@example.com',
        labelText: 'Email',
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: '*******',
        labelText: 'Password',
      ),
      obscureText: true,
    );
  }

  Widget submitButton() {
    return RaisedButton(
      onPressed: () {},
      child: Text('Login'),
      color: Colors.white,
      textColor: Colors.black,
    );
  }
}
