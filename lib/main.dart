import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}


