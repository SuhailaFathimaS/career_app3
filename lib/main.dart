import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';
import 'screens/applications_screen.dart';
import 'screens/jobs_screen.dart';
import 'screens/companies_screen.dart';

void main() => runApp(CareerApp());

class CareerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Career & Job Manager',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashboardScreen(),
    );
  }
}
