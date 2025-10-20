import 'package:flutter/material.dart';

class RecentOpportunities extends StatelessWidget {
  const RecentOpportunities({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {'company': 'Google Cloud', 'role': 'Software Engineering Intern', 'due': 'Due Oct 15, 2023'},
      {'company': 'Microsoft', 'role': 'Product Manager Intern', 'due': 'Due Oct 20, 2023'},
      {'company': 'Amazon', 'role': 'Data Science Intern', 'due': 'Due Oct 5, 2023'},
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Recent Opportunities', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text('View All', style: TextStyle(color: Colors.deepPurple)),
          ],
        ),
        const SizedBox(height: 12),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, idx) {
            final it = items[idx];
            return Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                elevation: 4,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepPurple.shade50,
                    child: Text(
                      (it['company'] as String).split(' ').map((w) => w[0]).take(2).join(),
                      style: const TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
                    ),
                  ),
                  title: Text(it['company'] as String, style: const TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('${it['role']}\n${it['due']}', style: const TextStyle(fontSize: 12)),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
