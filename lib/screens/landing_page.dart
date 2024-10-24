import 'package:flutter/material.dart';
import 'login_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gambar latar belakang
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.jpg'), // Ganti dengan gambar latar belakang yang sesuai
                fit: BoxFit.cover, // Gambar menyesuaikan ukuran layar
              ),
            ),
          ),
          // Konten di atas latar belakang
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo SayurKita di bagian atas
                Padding(
                  padding: const EdgeInsets.all(16.0), // Jarak logo dari pinggiran
                  child: Image.asset(
                    'images/logo.jpg', // Ganti dengan logo SayurKita
                    height: 100, // Ukuran logo
                  ),
                ),
                const Text(
                  'Selamat Datang di SayurKita!', // Teks sambutan
                  style: TextStyle(
                    fontSize: 28, // Ukuran teks besar
                    fontWeight: FontWeight.bold, // Teks tebal
                    color: Color.fromARGB(255, 12, 82, 15), // Warna teks hijau
                  ),
                ),
                const SizedBox(height: 20), // Jarak antara teks dan tombol
                // Tombol "Masuk"
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF388E3C), // Warna hijau pastel untuk tombol
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15), // Ukuran padding tombol
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()), // Navigasi ke halaman LoginPage
                    );
                  },
                  child: const Text(
                    'Masuk', // Teks pada tombol
                    style: TextStyle(fontSize: 18, color: Colors.white), // Warna teks putih
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
