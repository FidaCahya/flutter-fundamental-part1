import 'package:flutter/material.dart'; 
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController(); // Mengontrol input username
  final TextEditingController _passwordController = TextEditingController(); // Mengontrol input password
  String? _errorMessage; // Menyimpan pesan error jika login gagal

  void _login() {
    String username = _usernameController.text; // Mengambil teks dari input username
    String password = _passwordController.text; // Mengambil teks dari input password

    // Logika pengecekan login sederhana
    if (username == 'admin' && password == 'admin123') {
      // Menambahkan data email dan bio
      String email = 'adm_sayur@gmail.com';  // Contoh email yang ditampilkan di halaman berikutnya
      String address = 'Jl.Raya Suhat No 22';  // Contoh bio atau alamat

      // Navigasi ke halaman HomePage jika login sukses
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(
            username: username,
            email: email,
            address: address,
          ),
        ),
      );
    } else {
      // Menampilkan pesan error jika login gagal
      setState(() {
        _errorMessage = 'Username atau password salah!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')), // Judul halaman
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 300, // Lebar kotak login
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1), // Warna latar belakang kotak login
              borderRadius: BorderRadius.circular(10), // Sudut kotak yang melengkung
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Warna bayangan kotak
                  spreadRadius: 2, // Luas sebaran bayangan
                  blurRadius: 5, // Ketajaman bayangan
                  offset: const Offset(0, 3), // Posisi bayangan
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Kolom menyesuaikan isi
              children: [
                // Logo SayurKita di atas form login
                Padding(
                  padding: const EdgeInsets.only(bottom: 20), // Jarak logo dengan form
                  child: Image.asset(
                    'images/logo.jpg', // Ganti dengan logo SayurKita
                    height: 100, // Ukuran logo
                  ),
                ),
                // Input untuk username
                TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(labelText: 'Username'), // Label untuk input username
                ),
                // Input untuk password
                TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: 'Password'), // Label untuk input password
                  obscureText: true, // Menyembunyikan teks password
                ),
                const SizedBox(height: 20), // Jarak antara input password dan tombol
                // Tombol login
                ElevatedButton(
                  onPressed: _login, // Panggil fungsi login saat tombol ditekan
                  child: const Text('Login'), // Teks pada tombol
                ),
                // Menampilkan pesan error jika login gagal
                if (_errorMessage != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 10), // Jarak pesan error dari tombol
                    child: Text(
                      _errorMessage!, // Teks pesan error
                      style: const TextStyle(color: Colors.red), // Warna teks error merah
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
