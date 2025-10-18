import 'package:flutter/material.dart';

class CompaniesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Companies")),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text("Amazon"),
            subtitle: Text("Industry: Tech · Open Positions: 25"),
            trailing: ElevatedButton(
              child: Text("View Opportunities"),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
