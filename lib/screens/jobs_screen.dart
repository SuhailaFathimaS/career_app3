import 'package:flutter/material.dart';

class JobsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Jobs")),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text("Google · Software Engineering Intern"),
            subtitle: Text("Location: Mountain View, CA\nDue: 10/5/2025"),
            trailing: ElevatedButton(
              child: Text("Apply Now"),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
