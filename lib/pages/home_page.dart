// lib/pages/home_page.dart
import 'package:flutter/material.dart';
// Import BerandaPage
import 'beranda_page.dart';
import 'berita_page.dart';
import 'agenda_page.dart';
import 'profil_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Ubah indeks awal menjadi 0 untuk menampilkan BerandaPage
  int _selectedIndex = 0;

  // Tambahkan BerandaPage ke daftar halaman
  final List<Widget> _pages = const [
    BerandaPage(), // Indeks 0 - Tampilan awal
    BeritaPage(), // Indeks 1
    AgendaPage(), // Indeks 2
    ProfilPage(), // Indeks 3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF15438e),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        elevation: 5.0,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'Berita'),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Agenda'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}
