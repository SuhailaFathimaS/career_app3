import 'package:flutter/material.dart';
import 'screens/applications_screen.dart';
import 'screens/jobs_screen.dart';
import 'screens/companies_screen.dart';

void main() {
  runApp(const CareerApp());
}

class CareerApp extends StatelessWidget {
  const CareerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Career App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Career Dashboard"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _quickActionsSection(context),
            const SizedBox(height: 20),
            _applicationOverviewSection(),
            const SizedBox(height: 20),
            _recentActivitySection(),
          ],
        ),
      ),
    );
  }

  Widget _quickActionsSection(BuildContext context) {
    final actions = [
      {"title": "Jobs", "screen":  JobsScreen(), "icon": Icons.work},
      {"title": "Applications", "screen":  ApplicationsScreen(), "icon": Icons.folder_open},
      {"title": "Companies", "screen":  CompaniesScreen(), "icon": Icons.business},
      {"title": "Analytics", "screen": null, "icon": Icons.bar_chart},
    ];

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Quick Actions",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: actions.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 3,
              ),
              itemBuilder: (context, index) {
                return ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: actions[index]["screen"] != null
                      ? () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => actions[index]["screen"] as Widget),
                          )
                      : null,
                  icon: Icon(actions[index]["icon"] as IconData),
                  label: Text(actions[index]["title"] as String),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _applicationOverviewSection() {
    final stats = [
      {"title": "Applied Jobs", "count": 12, "color": Colors.blue},
      {"title": "Shortlisted", "count": 5, "color": Colors.orange},
      {"title": "Interviews", "count": 3, "color": Colors.green},
      {"title": "Offers", "count": 1, "color": Colors.purple},
    ];

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Application Overview",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: stats.map((stat) {
                return Column(
                  children: [
                    Text(
                      "${stat['count']}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: stat['color'] as Color,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(stat['title'] as String),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _recentActivitySection() {
    final activities = [
      "Shortlisted for Microsoft Product Manager",
      "Interview Scheduled: Google - 20/10/2025",
      "Deadline Reminder: Amazon Internship",
    ];

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Recent Activity",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: activities.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.notifications, color: Colors.blueAccent),
                  title: Text(activities[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
