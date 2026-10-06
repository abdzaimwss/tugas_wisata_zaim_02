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
          'Coban Rondo',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 22,
          ),
        ),
        backgroundColor: const Color(0xfffdf8f8),
        foregroundColor: const Color(0xff000000),
      ),

      // BACKGROUND
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,

            // COLOR FILTER BACKGROUND
            colorFilter: ColorFilter.mode(
              Colors.black54,
              BlendMode.darken,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // GAMBAR COBAN RONDO
              Padding(
                padding: const EdgeInsets.all(15),
                child: SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/coban.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 5),

              // JUDUL
              const Text(
                'Coban Rondo',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 20),

              // CARD ALAMAT & KONTAK
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50.withOpacity(0.9),
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
                      'Coban Rondo, Malang, Jawa Timur',
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
                  color: Colors.green.shade50.withOpacity(0.9),
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
                      'Coban Rondo merupakan salah satu '
                      'destinasi wisata alam terkenal di Malang.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '💧 Air terjun yang indah\n'
                      '🌲 Pemandangan alam\n'
                      '🏔️ Udara yang sejuk\n'
                      '📸 Tempat foto menarik',
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
      ),
    );
  }
}
