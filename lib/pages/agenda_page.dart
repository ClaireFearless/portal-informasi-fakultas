import 'package:flutter/material.dart';
import '../widgets/agenda_item.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Contoh data agenda, bisa diganti nanti dari database / API
    final agendaList = [
      {'judul': 'Workshop Flutter untuk Mahasiswa', 'tanggal': '10 November 2025'},
      {'judul': 'Pelatihan Dasar AI dan Machine Learning', 'tanggal': '15 November 2025'},
      {'judul': 'Pameran Inovasi Mahasiswa Fakultas Informatika', 'tanggal': '20 November 2025'},
      {'judul': 'Seminar Keamanan Siber', 'tanggal': '25 November 2025'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Agenda Fakultas'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: agendaList.length,
        itemBuilder: (context, index) {
          final agenda = agendaList[index];
          return AgendaItem(
            judul: agenda['judul']!,
            tanggal: agenda['tanggal']!,
          );
        },
      ),
    );
  }
}
