import 'package:flutter/material.dart';

import 'screens/Login.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bloc Pattern'),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: LoginScreen(),
      ),
      theme: ThemeData.dark(),
    );
  }
}
