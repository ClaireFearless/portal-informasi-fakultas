import 'package:flutter/material.dart';

class ProfilSection extends StatelessWidget {
  final String title;
  final String? content;
  final Widget? contentWidget;
  final IconData icon;
  final Color color;

  const ProfilSection({
    super.key,
    required this.title,
    this.content,
    this.contentWidget,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            // Kita buat shadow lebih terlihat
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color, size: 28),
              const SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ],
          ),
          const Divider(height: 25, thickness: 1, color: Colors.grey),
          if (content != null)
            Text(
              content!,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black87,
                height: 1.5,
              ),
            ),
          if (contentWidget != null) contentWidget!,
        ],
      ),
    );
  }
}
