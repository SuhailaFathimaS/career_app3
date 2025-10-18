import 'package:flutter/material.dart';

class ApplicationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Applications")),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text("Netflix · Content Strategist"),
            subtitle: Text(
                "Status: Shortlisted\nApplied: 9/5/2025\nLocation: Los Gatos, CA"),
            trailing: ElevatedButton(
              child: Text("View Details"),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
