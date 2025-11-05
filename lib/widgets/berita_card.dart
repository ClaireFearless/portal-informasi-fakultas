// widgets/berita_card.dart
import 'package:flutter/material.dart';

// Model Berita
class BeritaItem {
  final String judul;
  final String tanggal;
  final String deskripsi; // Deskripsi pendek untuk daftar
  final String deskripsiLengkap; // Deskripsi lengkap untuk detail
  final String imageAsset;

  BeritaItem({
    required this.judul,
    required this.tanggal,
    required this.deskripsi,
    required this.deskripsiLengkap,
    required this.imageAsset,
  });
}

// Widget Card Berita
class BeritaCard extends StatelessWidget {
  final BeritaItem berita;
  final VoidCallback onTap; // Ganti onTap dari BeritaItem ke fungsi callback

  const BeritaCard({
    super.key,
    required this.berita,
    required this.onTap, // Terima fungsi callback
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Gambar Berita dari Assets
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              berita.imageAsset,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 150,
                  color: Colors.grey[300],
                  child: const Icon(Icons.image_not_supported),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Judul Berita
                Text(
                  berita.judul,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF15438e),
                  ),
                ),
                const SizedBox(height: 8),
                // Tanggal Berita
                Text(
                  berita.tanggal,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 8),
                // Deskripsi Singkat
                Text(
                  berita.deskripsi,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
                const SizedBox(height: 12),
                // Tombol Baca Selengkapnya
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed:
                        onTap, // Panggil fungsi callback saat tombol ditekan
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(
                        0xFF15438e,
                      ), // Warna biru utama
                      foregroundColor: Colors.white, // Warna teks
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Baca Selengkapnya'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widget Detail Berita
class DetailBeritaPage extends StatelessWidget {
  final BeritaItem berita;

  const DetailBeritaPage({super.key, required this.berita});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF15438e),
        foregroundColor: Colors.white,
        title: Text('Detail Berita', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar Berita dari Assets
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  berita.imageAsset,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 200,
                      color: Colors.grey[300],
                      child: const Icon(Icons.image_not_supported),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              // Judul Berita
              Text(
                berita.judul,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF15438e),
                ),
              ),
              const SizedBox(height: 8),
              // Tanggal Berita
              Text(
                berita.tanggal,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              // Deskripsi Lengkap Berita
              Text(
                berita.deskripsiLengkap,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
