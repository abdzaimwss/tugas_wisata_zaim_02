import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanGambar(),
    );
  }
}

class HalamanGambar extends StatelessWidget {
  const HalamanGambar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text(
          'Wisata Bali',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 22,
          ),
        ),
        backgroundColor: const Color(0xfffdf8f8),
        foregroundColor: const Color(0xff000000),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // GAMBAR BALI
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Image.asset(
                'assets/bali.png',
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),

            // JUDUL
            const Text(
              'Island of Paradise',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // CARD ALAMAT & KONTAK
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '📍 Alamat',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Bali, Indonesia',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '📞 Kontak',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '0812-3456-7890',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // CARD DETAIL WISATA
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Detail Wisata',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Bali merupakan salah satu destinasi '
                    'wisata terkenal di Indonesia.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '🌊 Pantai yang indah\n'
                    '🌴 Pemandangan alam\n'
                    '🎭 Budaya yang menarik\n'
                    '🍜 Kuliner khas Bali',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
