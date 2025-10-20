import 'package:flutter/material.dart';
import '../screens/companies_screen.dart';
import '../screens/jobs_screen.dart';
import '../screens/applications_screen.dart';
import '../screens/analytics_screen.dart';

class QuickActionsCard extends StatelessWidget {
  const QuickActionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final actions = [
      {'label': 'Companies', 'icon': Icons.apartment_outlined},
      {'label': 'Jobs', 'icon': Icons.work_outline},
      {'label': 'Applications', 'icon': Icons.folder_open_outlined},
      {'label': 'Analytics', 'icon': Icons.bar_chart},
    ];

    final width = MediaQuery.of(context).size.width;
    final crossAxisCount = width >= 900 ? 4 : (width >= 600 ? 3 : 2);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 16, 14, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Quick Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            GridView.builder(
              itemCount: actions.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: (width / crossAxisCount) / 96,
              ),
              itemBuilder: (context, idx) {
                final item = actions[idx];
                return _QuickActionTile(
                  icon: item['icon'] as IconData,
                  label: item['label'] as String,
                  onTap: () {
                    switch (idx) {
                      case 0:
                        Navigator.push(context, MaterialPageRoute(builder: (_) => const CompaniesScreen()));
                        break;
                      case 1:
                        Navigator.push(context, MaterialPageRoute(builder: (_) => const JobsScreen()));
                        break;
                      case 2:
                        Navigator.push(context, MaterialPageRoute(builder: (_) => const ApplicationsScreen()));
                        break;
                      case 3:
                        Navigator.push(context, MaterialPageRoute(builder: (_) => const AnalyticsScreen()));
                        break;
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _QuickActionTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  const _QuickActionTile({required this.icon, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [BoxShadow(color: Color(0x11000000), blurRadius: 6, offset: Offset(0, 3))],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.deepPurple.shade50,
              child: Icon(icon, color: Colors.deepPurple, size: 20),
            ),
            const SizedBox(height: 8),
            Flexible(
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
