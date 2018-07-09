import 'package:flutter/material.dart';

import 'screens/Login.dart';
import './Provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Bloc Pattern'),
            centerTitle: true,
          ),
          drawer: Drawer(),
          body: LoginScreen(),
        ),
        theme: ThemeData.dark(),
      ),
    );
  }
}
