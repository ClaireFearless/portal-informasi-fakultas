import 'package:flutter/material.dart';

class AgendaItem extends StatelessWidget {
  final String judul;
  final String tanggal;

  const AgendaItem({
    super.key,
    required this.judul,
    required this.tanggal,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: const Icon(Icons.event_note, color: Colors.blue, size: 36),
        title: Text(
          judul,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          tanggal,
          style: const TextStyle(color: Colors.grey),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.blue),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Agenda: $judul')),
          );
        },
      ),
    );
  }
}
