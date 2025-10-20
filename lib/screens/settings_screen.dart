import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool pushEnabled = true;
  bool emailEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xFF7C3AED), Color(0xFFB453F6)], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: () => Navigator.maybePop(context), icon: const Icon(Icons.arrow_back, color: Colors.white)),
                    const SizedBox(width: 4),
                    const Text('Settings', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: const [BoxShadow(color: Color(0x22000000), blurRadius: 6, offset: Offset(0,3))],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.deepPurple.shade100, child: const Text('JS', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('John Smith', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                            SizedBox(height: 4),
                            Text('john.smith@college.edu', style: TextStyle(color: Colors.white70, fontSize: 12)),
                            SizedBox(height: 4),
                            Text('Computer Science · Final Year', style: TextStyle(color: Colors.white70, fontSize: 12)),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white24, elevation: 0),
                        onPressed: () {},
                        child: const Text('Edit', style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                _sectionTitle('Account'),
                _settingsTile(leading: Icons.person_outline, title: 'Profile Information'),
                _settingsTile(leading: Icons.email_outlined, title: 'Email Preferences'),
                _settingsTile(leading: Icons.lock_outline, title: 'Privacy & Security'),
                const SizedBox(height: 12),
                _sectionTitle('Notifications'),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.08), borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      SwitchListTile(
                        value: pushEnabled,
                        onChanged: (v) => setState(() => pushEnabled = v),
                        title: const Text('Push Notifications', style: TextStyle(color: Colors.white)),
                        secondary: const Icon(Icons.notifications, color: Colors.white),
                      ),
                      const Divider(color: Colors.white24),
                      SwitchListTile(
                        value: emailEnabled,
                        onChanged: (v) => setState(() => emailEnabled = v),
                        title: const Text('Email Alerts', style: TextStyle(color: Colors.white)),
                        secondary: const Icon(Icons.mail_outline, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                _sectionTitle('Support'),
                _settingsTile(leading: Icons.help_outline, title: 'Help Center', color: Colors.white),
                _settingsTile(leading: Icons.phone_in_talk_outlined, title: 'Call Support', color: Colors.white),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _settingsTile({required IconData leading, required String title, Color? color}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.08), borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(leading, color: color ?? Colors.white),
        title: Text(title, style: TextStyle(color: color ?? Colors.white)),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
        onTap: () {},
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 6),
      child: Text(title, style: const TextStyle(color: Colors.white70, fontWeight: FontWeight.bold)),
    );
  }
}
