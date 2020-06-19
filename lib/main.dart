import 'package:flutter/material.dart';
import 'package:whtsap/screens/calls_screen.dart';
import 'package:whtsap/screens/status_screen.dart';
import 'package:whtsap/screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
      ),
      routes: {
        '/' : (_) => TabsScreen(),
        StatusScreen.routeName : (_) => StatusScreen(),
        CallsScreen.routeName : (_)=> CallsScreen(),
      },
    );
  }
}
