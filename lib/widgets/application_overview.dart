import 'package:flutter/material.dart';
import '../screens/applications_screen.dart';

class ApplicationOverviewCard extends StatelessWidget {
  const ApplicationOverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final stats = [
      {'label': 'Applied Jobs', 'value': '12'},
      {'label': 'Shortlisted', 'value': '5'},
      {'label': 'Interviews', 'value': '3'},
      {'label': 'Offers', 'value': '1'},
    ];

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Application Overview', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ApplicationsScreen())),
                  child: const Text('View All'),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: stats.map((s) {
                return Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [BoxShadow(color: Color(0x11000000), blurRadius: 6, offset: Offset(0, 3))],
                    ),
                    child: Column(
                      children: [
                        Text(s['value'] as String, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 6),
                        Text(s['label'] as String, style: const TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
