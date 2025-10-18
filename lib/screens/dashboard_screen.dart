import 'package:flutter/material.dart';
import 'applications_screen.dart';
import 'jobs_screen.dart';
import 'companies_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _profileCard(context),
            SizedBox(height: 16),
            _quickActions(context),
            SizedBox(height: 16),
            _applicationSummary(context),
          ],
        ),
      ),
    );
  }

  Widget _profileCard(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("John Smith"),
        subtitle: Text("Computer Science · Final Year\njohn.smith@college.edu"),
        trailing: IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
            // Future Profile Screen
          },
        ),
      ),
    );
  }

  Widget _quickActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _actionButton(context, "Jobs", JobsScreen()),
        _actionButton(context, "Applications", ApplicationsScreen()),
        _actionButton(context, "Companies", CompaniesScreen()),
        _actionButton(context, "Analytics", null), // Future Analytics Screen
      ],
    );
  }

  Widget _actionButton(BuildContext context, String title, Widget? screen) {
    return ElevatedButton(
      onPressed: screen != null
          ? () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => screen))
          : null,
      child: Text(title),
    );
  }

  Widget _applicationSummary(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("Applications Summary"),
        subtitle: Text("Applied: 12, Shortlisted: 5, Interviews: 3\nTap to view all"),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => ApplicationsScreen()));
        },
      ),
    );
  }
}
