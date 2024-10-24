import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;
  final String email;
  final String address; // Mengganti bio menjadi address (alamat)

  const ProfilePage({
    super.key, 
    required this.username,
    required this.email,
    required this.address, // Mengganti bio menjadi address (alamat)
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'Poppins', // Gaya font yang modern dan trendy
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 72, 154, 101), // Warna segar untuk AppBar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Sudut kartu melengkung
            ),
            elevation: 6,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Membuat kolom sekecil mungkin berdasarkan kontennya
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/profile_picture.jpg'), // Menampilkan gambar profil
                  ),
                  const SizedBox(height: 16), // Jarak antara elemen
                  Text(
                    username, // Menampilkan nama pengguna
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                      fontFamily: 'Poppins', // Gaya font modern
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.email, color: Colors.green), // Ikon email
                      const SizedBox(width: 8),
                      Text(
                        email, // Menampilkan email
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.home, color: Colors.green), // Ikon rumah untuk alamat
                      const SizedBox(width: 8),
                      Text(
                        address, // Menampilkan alamat
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Tombol log out yang lebih minimalis dan sederhana
                  TextButton.icon(
                    onPressed: () {
                      // Aksi untuk log out
                    },
                    icon: const Icon(Icons.logout), // Ikon untuk log out
                    label: const Text('Log Out'),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Padding tombol
                      foregroundColor: Colors.white, // Warna teks putih
                      backgroundColor: const Color.fromARGB(255, 72, 154, 101), // Warna tombol
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // Tombol dengan sudut melengkung
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
