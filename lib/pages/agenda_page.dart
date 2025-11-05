import 'package:flutter/material.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Contoh data agenda
    final agendaList = [
      {
        'image': 'assets/images/launching_magister.jpg',
        'kategori': 'AGENDA',
        'tanggal': 'OCTOBER 28, 2025',
        'judul': 'Launching Magister Ilmu Komunikasi Umsida, Pendaftaran Sudah Dibuka!',
        'deskripsi': 'Umsida.ac.id - Universitas Muhammadiyah Sidoarjo (Umsida) kembali menegaskan langkahnya sebagai...',
      },
      {
        'image': 'assets/images/launching_magister.jpg',
        'kategori': 'AGENDA',
        'tanggal': 'OCTOBER 28, 2025',
        'judul': 'Launching Magister Ilmu Komunikasi Umsida, Pendaftaran Sudah Dibuka!',
        'deskripsi': 'Umsida.ac.id - Universitas Muhammadiyah Sidoarjo (Umsida) kembali menegaskan langkahnya sebagai...',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E40AF), // Blue color from Umsida
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/images/umsida_logo.png',
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
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header "Agenda"
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Agenda',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E40AF),
              ),
            ),
          ),
          
          // List Agenda
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: agendaList.length,
              itemBuilder: (context, index) {
                final agenda = agendaList[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 10,
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
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        child: Image.asset(
                          agenda['image'] as String,
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: double.infinity,
                              height: 200,
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
                            // Kategori dan Tanggal
                            Text(
                              '${agenda['kategori']} / ${agenda['tanggal']}',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 8),
                            
                            // Judul
                            Text(
                              agenda['judul'] as String,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                height: 1.3,
                              ),
                            ),
                            const SizedBox(height: 8),
                            
                            // Deskripsi
                            Text(
                              agenda['deskripsi'] as String,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[700],
                                height: 1.4,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 16),
                            
                            // Button
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Handle button press
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF1E40AF),
                                  padding: const EdgeInsets.symmetric(vertical: 14),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  elevation: 0,
                                ),
                                child: const Text(
                                  'Baca Selengkapnya',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
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