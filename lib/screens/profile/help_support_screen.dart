import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  Future<void> _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'support@campushub.com',
      query: 'subject=Help%20Request',
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    }
  }

  Future<void> _launchPhone() async {
    final Uri phoneUri = Uri(scheme: 'tel', path: '+1234567890');
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Help & Support',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Contact Support Section
          Text(
            'Contact Support',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),
          const SizedBox(height: 16),
          _buildContactCard(
            context: context,
            icon: Icons.email_outlined,
            title: 'Email Support',
            subtitle: 'support@campushub.com',
            color: const Color(0xFF2196F3),
            onTap: _launchEmail,
          ),
          const SizedBox(height: 12),
          _buildContactCard(
            context: context,
            icon: Icons.phone_outlined,
            title: 'Phone Support',
            subtitle: '+1 (234) 567-890',
            color: const Color(0xFF4CAF50),
            onTap: _launchPhone,
          ),
          const SizedBox(height: 32),

          // FAQ Section
          Text(
            'Frequently Asked Questions',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),
          const SizedBox(height: 16),
          _buildFAQItem(
            context: context,
            question: 'How do I report a lost item?',
            answer:
                'Navigate to the Lost & Found section from the home screen, tap the "+" button, select "Lost Item", and fill in the details about your lost item.',
          ),
          _buildFAQItem(
            context: context,
            question: 'How do I edit my profile information?',
            answer:
                'Go to your profile, tap on "Edit Profile" from the menu, make your changes, and tap "Save Changes".',
          ),
          _buildFAQItem(
            context: context,
            question: 'Can I delete my posted items?',
            answer:
                'Yes, go to "My Lost Items" or "My Found Items" from your profile, find the item you want to delete, and tap the delete icon.',
          ),
          _buildFAQItem(
            context: context,
            question: 'How do I bookmark an event?',
            answer:
                'Open any event from the Events section and tap the bookmark button at the bottom. You can view all bookmarked events from your profile.',
          ),
          _buildFAQItem(
            context: context,
            question: 'How do I contact someone about a lost/found item?',
            answer:
                'Open the item detail page and use the "CALL" or "MESSAGE" buttons to contact the person who posted the item.',
          ),
          const SizedBox(height: 32),

          // App Info
          Text(
            'App Information',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.grey[800]
                  : Colors.grey.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                _buildInfoRow(context, 'Version', '1.0.0'),
                const Divider(height: 24),
                _buildInfoRow(context, 'Last Updated', 'January 2026'),
                const Divider(height: 24),
                _buildInfoRow(context, 'Platform', 'Android, iOS'),
              ],
            ),
          ),
          const SizedBox(height: 32),

          // Report a Bug Button
          SizedBox(
            height: 52,
            child: OutlinedButton.icon(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Report a Bug'),
                    content: const Text(
                      'Please email us at support@campushub.com with details about the bug you encountered.',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Close'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          _launchEmail();
                        },
                        child: const Text('Send Email'),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.bug_report_outlined),
              label: const Text(
                'REPORT A BUG',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFF2196F3),
                side: const BorderSide(color: Color(0xFF2196F3), width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactCard({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withOpacity(0.3)),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: Colors.white, size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).textTheme.bodySmall?.color,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: color, size: 18),
          ],
        ),
      ),
    );
  }

  Widget _buildFAQItem({
    required BuildContext context,
    required String question,
    required String answer,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Theme.of(context).dividerColor),
      ),
      child: Theme(
        data: ThemeData(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 16),
          childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          title: Text(
            question,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),
          children: [
            Text(
              answer,
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).textTheme.bodyMedium?.color,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Theme.of(context).textTheme.bodySmall?.color,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).textTheme.bodyLarge?.color,
          ),
        ),
      ],
    );
  }
}
