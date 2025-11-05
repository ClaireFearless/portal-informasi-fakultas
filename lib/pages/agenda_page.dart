import 'package:flutter/material.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Data agenda sesuai dengan gambar
    final agendaList = [
      {
        'image': 'assets/images/UTS.png',
        'tanggal': '11-16 NOVEMBER 2026',
        'kategori': 'AGENDA',
        'judul': 'UJIAN TENGAH SEMESTER / UTS',
        'deskripsi': 'Umsida.ac.id - UTS dilaksanakan sesuai ketentuan akademik UMSIDA. Mahasiswa wajib hadir dan mengikuti aturan yang berlaku.',
      },
      {
        'image': 'assets/images/UAS.png',
        'tanggal': '6-11 JANUARI 2026',
        'kategori': 'AGENDA',
        'judul': 'UJIAN AKHIR SEMESTER / UAS',
        'deskripsi': 'Umsida.ac.id - UAS dilaksanakan sesuai ketentuan akademik UMSIDA. Mahasiswa wajib hadir dan mengikuti aturan yang berlaku.',
      },
      {
        'image': 'assets/images/IDUL_FITRI.png',
        'tanggal': '24 MAR-12 APR 2026',
        'kategori': 'AGENDA',
        'judul': 'LIBUR HARI RAYA IDUL FITRI 1446 H',
        'deskripsi': 'Umsida.ac.id - Kampus libur selama cuti bersama Idul Fitri 1446 Hijriah. Seluruh kegiatan akademik dan layanan administrasi sementara dihentikan sesuai kalender nasional.',
      },
      {
        'image': 'assets/images/WISUDA.png',
        'tanggal': '20-21 JUNI 2026',
        'kategori': 'AGENDA',
        'judul': 'WISUDA GANJIL/ GENAP UMSIDA',
        'deskripsi': 'Umsida.ac.id - Pelaksanaan wisuda bagi lulusan semester ganjil dan genap. Mahasiswa diharapkan menyelesaikan administrasi, pembayaran, dan verifikasi dokumen sebelum hari pelaksanaan.',
      },
      {
        'image': 'assets/images/YUDISIUM2.png',
        'tanggal': '1-16 AGUSTUS 2026',
        'kategori': 'AGENDA',
        'judul': 'YUDISIUM SEMESTER GENAP',
        'deskripsi': 'Umsida.ac.id - Proses penetapan kelulusan sidang akhir semester genap. Mahasiswa wajib menyelesaikan administrasi dan dokumen yang diperlukan sebelum tanggal pelaksanaan.',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E40AF),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/images/umsida_logo.png',
          height: 32,
          fit: BoxFit.contain,
          cacheHeight: 64,
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
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header "Agenda"
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 20, 16, 16),
            child: Text(
              'Agenda',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E40AF),
              ),
            ),
          ),
          
          // List Agenda
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              itemCount: agendaList.length,
              itemBuilder: (context, index) {
                final agenda = agendaList[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        spreadRadius: 0,
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                        child: Image.asset(
                          agenda['image'] as String,
                          width: double.infinity,
                          height: 180,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: double.infinity,
                              height: 180,
                              color: Colors.grey[300],
                              child: const Icon(
                                Icons.image,
                                size: 50,
                                color: Colors.grey,
                              ),
                            );
                          },
                        ),
                      ),
                      
                      // Content
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Icon calendar dengan tanggal dan kategori
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  size: 14,
                                  color: Colors.grey[600],
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  '${agenda['tanggal']} / ${agenda['kategori']}',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.2,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            
                            // Judul
                            Text(
                              agenda['judul'] as String,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                height: 1.3,
                                letterSpacing: 0.2,
                              ),
                            ),
                            const SizedBox(height: 8),
                            
                            // Deskripsi
                            Text(
                              agenda['deskripsi'] as String,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey[700],
                                height: 1.5,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}