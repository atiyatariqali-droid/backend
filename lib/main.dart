import 'package:flutter/material.dart';
import 'package:frontend/home.dart';
import 'package:frontend/login.dart';
import 'package:frontend/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      initialRoute: '/home',

      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/dashboard': (context) => DashboardPage(),
         '/dashboards': (context) => DashboardPage(),
      },
    );
  }
}