import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'), // Judul halaman About
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Menampilkan gambar sayuran di bagian atas dengan sudut yang melengkung
            ClipRRect(
              borderRadius: BorderRadius.circular(10), // Membuat sudut gambar melengkung
              child: Image.asset(
                'images/sayuran.jpg', // Ganti dengan gambar sayuran yang tersedia
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover, // Gambar menyesuaikan ukuran kotak
              ),
            ),
            const SizedBox(height: 20), // Memberi jarak antara gambar dan konten berikutnya
            // Menampilkan deskripsi aplikasi dalam bentuk kartu
            Card(
              elevation: 5, // Memberi efek bayangan pada kartu
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Membuat sudut kartu melengkung
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Tentang SayurKita',
                      style: TextStyle(
                        fontSize: 24, // Ukuran teks besar
                        fontWeight: FontWeight.bold, // Teks tebal
                      ),
                    ),
                    SizedBox(height: 10), // Jarak antara judul dan teks deskripsi
                    Text(
                      'SayurKita adalah aplikasi belanja sayur online yang memudahkan Anda dalam membeli sayur segar dan berkualitas langsung dari petani lokal.',
                      textAlign: TextAlign.center, // Teks rata tengah
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5, // Spasi antar baris
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20), // Jarak antara kartu pertama dan kartu kedua
            // Menampilkan misi aplikasi dalam kartu kedua
            Card(
              elevation: 5, // Efek bayangan pada kartu
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Sudut melengkung untuk kartu
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Misi Kami',
                      style: TextStyle(
                        fontSize: 20, // Ukuran teks untuk judul misi
                        fontWeight: FontWeight.bold, // Teks judul misi tebal
                      ),
                    ),
                    SizedBox(height: 10), // Jarak antara judul misi dan deskripsi misi
                    Text(
                      'Kami berkomitmen untuk menyediakan sayuran segar dan berkualitas kepada pelanggan, mendukung petani lokal, serta memberikan pengalaman belanja yang nyaman dan cepat.',
                      textAlign: TextAlign.center, // Teks rata tengah
                      style: TextStyle(
                        fontSize: 16, // Ukuran teks untuk deskripsi misi
                        height: 1.5, // Spasi antar baris
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
