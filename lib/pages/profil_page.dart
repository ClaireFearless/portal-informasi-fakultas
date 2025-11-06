import 'package:flutter/material.dart';
import '../widgets/profil_section.dart'; // Import widget kita

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // AppBar
        backgroundColor: const Color(0xFF1E40AF),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Image.asset(
          'assets/images/umsida_logo.png', // <-- SUDAH SESUAI
          height: 32,
          errorBuilder: (context, error, stackTrace) {
            return const Text(
              'UMSIDA',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul Halaman
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Profil Fakultas',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E40AF),
                ),
              ),
            ),

            // --- [UPDATED] HERO IMAGE ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/images/kampus.png', // <-- Ganti path gambar Anda
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Icon(Icons.school, color: Colors.grey, size: 50),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 25),

            // --- Visi & Misi ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ProfilSection(
                title: 'Visi & Misi',
                icon: Icons.lightbulb_outline,
                color: Colors.orange.shade700,
                contentWidget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Visi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Menjadi fakultas yang unggul dan inovatif dalam pengembangan sains dan teknologi berdasarkan nilai-nilai Islam untuk kesejahteraan masyarakat tingkat ASEAN pada tahun 2038',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Misi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 10),
                    _buildListItem(
                      context,
                      'Menyelenggarakan pendidikan dan pengajaran yang unggul dan inovatif dalam rekayasa IPTEKS berdasarkan nilai-nilai Islam.',
                      1,
                    ),
                    _buildListItem(
                      context,
                      'Menyelenggarakan kegiatan penelitian dalam bidang rekayasa IPTEKS yang mendukung proses pembelajaran untuk kesejahteraan masyarakat.',
                      2,
                    ),
                    _buildListItem(
                      context,
                      'Menyelenggarakan kegiatan pengabdian kepada masyarakat dalam rekayasa IPTEKS berbasis potensi lokal untuk kesejahteraan masyarakat.',
                      3,
                    ),
                    _buildListItem(
                      context,
                      'Meningkatkan dan mengembangkan kerjasama dengan instansi pemerintah/swasta/ baik dalam maupun luar negeri yang berkelanjutan untuk menguatkan Catur Dharma Perguruan Tinggi Muhammadiyah (pendidikan pengajaran, penelitian, pengabdian dan Al Islam Kemuhammadiyahan).',
                      4,
                    ),
                    _buildListItem(
                      context,
                      'Meningkatkan tata kelola secara profesional berdasarkan nilai-nilai Islam.',
                      5,
                    ),
                    _buildListItem(
                      context,
                      'Meningkatkan pembinaan dan pengembangan kemahasiswaan yang unggul dan inovatif dalam rekayasa IPTEKS berdasarkan nilai- nilai Islam.',
                      6,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // --- Tujuan Fakultas ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ProfilSection(
                title: 'Tujuan',
                icon: Icons.check_circle_outline, // Ikon baru
                color: Colors.blue.shade700, // Warna baru
                contentWidget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildListItem(
                      context,
                      'Menghasilkan sarjana sains dan teknologi yang professional dan Islami.',
                      1,
                    ),
                    _buildListItem(
                      context,
                      'Menghasilkan penelitian sains dan teknologi untuk kesejateraan masyarakat.',
                      2,
                    ),
                    _buildListItem(
                      context,
                      'Mewujudkan pengabdian kepada masyarakat untuk kesejahteraan masyarakat.',
                      3,
                    ),
                    _buildListItem(
                      context,
                      'Mewujudkan kerjasama dengan lembaga di dalam dan luar negeri untuk penguatan Catur Dharma Perguruan Tinggi Muhammadiyah bidang sains dan teknologi.',
                      4,
                    ),
                    _buildListItem(
                      context,
                      'Mewujudkan tata kelola Fakultas sains dan teknologi yang profesional berdasarkan nilai- nilai Islam.',
                      5,
                    ),
                    _buildListItem(
                      context,
                      'Meningkatkan prestasi akademik dan non akademik mahasiswa fakultas sains dan teknologi.',
                      6,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // --- [UPDATED] PIMPINAN FAKULTAS (Horizontal List) ---
            const Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 15, top: 10),
              child: Text(
                'Pimpinan Fakultas',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E40AF),
                ),
              ),
            ),
            SizedBox(
              height: 150, // (Perbaikan overflow)
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20),
                children: [
                  _buildPimpinanCard(
                    'Ir. Iswanto, ST., M.MT.',
                    'Dekan',
                    'assets/images/dekan.png',
                  ), // <-- UPDATED
                  _buildPimpinanCard(
                    'Dr. Ir. Jamaaluddin, MM.',
                    'Wakil Dekan',
                    'assets/images/wadek.png',
                  ), // <-- UPDATED
                  // Kartu ketiga dihapus
                ],
              ),
            ),
            const SizedBox(height: 20),

            // --- Sejarah Fakultas (Dapat Anda isi) ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ProfilSection(
                title: 'Sejarah Fakultas',
                content:
                    'Fakultas Sains dan Teknik Universitas Muhammadiyah Sidoarjo', // Isi lebih lengkap
                icon: Icons.history,
                color: Colors.green.shade700,
              ),
            ),
            const SizedBox(height: 25),

            // --- [UPDATED] FASILITAS ---
            // Mengganti GridView dengan satu kartu besar karena hanya ada 1 gambar
            const Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 15),
              child: Text(
                'Fasilitas Unggulan',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E40AF),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              // Menggunakan helper card yang baru
              child: _buildSingleFasilitasCard(
                'Perpustakaan',
                'assets/images/Perpustakaan.png', // <-- Perhatikan huruf besar 'P'
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // --- Helper widget untuk daftar Visi/Misi/Tujuan ---
  Widget _buildListItem(BuildContext context, String text, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$index. ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: 15,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black87,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper widget untuk kartu Pimpinan (Horizontal)
  Widget _buildPimpinanCard(String name, String title, String imagePath) {
    return Container(
      width: 120, // Lebar kartu
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey[200],
              backgroundImage: AssetImage(imagePath),
              onBackgroundImageError: (e, s) =>
                  const Icon(Icons.person, size: 30, color: Colors.grey),
            ),
            const SizedBox(height: 8), // (Perbaikan overflow)
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: const TextStyle(fontSize: 11, color: Colors.grey),
              textAlign: TextAlign.center,
              maxLines: 1, // (Perbaikan overflow)
              overflow: TextOverflow.ellipsis, // (Perbaikan overflow)
            ),
          ],
        ),
      ),
    );
  }

  // --- [BARU] Helper widget untuk satu kartu Fasilitas (Full-width) ---
  // (Menggantikan _buildFasilitasCard yang lama)
  Widget _buildSingleFasilitasCard(String title, String imagePath) {
    return Container(
      height: 250, // Lebih tinggi agar proporsional
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (c, e, s) => Container(
                  color: Colors.grey[200],
                  child: const Center(
                    child: Icon(Icons.image, color: Colors.grey, size: 40),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0), // Padding sedikit lebih besar
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ), // Font lebih besar
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
