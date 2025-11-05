import 'package:flutter/material.dart';
import '../widgets/berita_card.dart';
import '../data/berita_data.dart';

class BeritaPage extends StatelessWidget {
  const BeritaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BeritaItem> daftarBerita = getBeritaSaintek();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF15438e),
        foregroundColor: Colors.white,
        title: const Text(
          'Berita Saintek UMS',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: daftarBerita.length,
          itemBuilder: (context, index) {
            var item = daftarBerita[index];
            return BeritaCard(
              berita: item,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailBeritaPage(berita: item),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
