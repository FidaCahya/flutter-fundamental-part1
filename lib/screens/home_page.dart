import 'package:flutter/material.dart';
import 'about_page.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  // Deklarasi variabel untuk username, email, dan alamat
  final String username;
  final String email;
  final String address;

  // Konstruktor untuk menginisialisasi variabel di atas
  HomePage({super.key, required this.username, required this.email, required this.address});

  // Data contoh untuk daftar sayuran dengan harga dan stok
  final List<Map<String, dynamic>> vegetables = [
    {
      'name': 'Tomat',
      'description': 'Sayuran segar dan juicy, cocok untuk salad.',
      'image': 'images/tomat.jpg', // Lokasi gambar tomat
      'price': 10000, // Harga dalam IDR
      'stock': 20, // Jumlah stok
    },
    {
      'name': 'Kangkung',
      'description': 'Sayuran hijau yang kaya akan nutrisi.',
      'image': 'images/kangkung.jpg', // Lokasi gambar kangkung
      'price': 5000, // Harga dalam IDR
      'stock': 10, // Jumlah stok
    },
    {
      'name': 'Wortel',
      'description': 'Sayuran renyah, baik untuk kesehatan mata.',
      'image': 'images/wortel.jpg', // Lokasi gambar wortel
      'price': 7000, // Harga dalam IDR
      'stock': 15, // Jumlah stok
    },
    {
      'name': 'Bayam',
      'description': 'Sayuran hijau yang penuh vitamin dan mineral.',
      'image': 'images/bayam.jpg', // Lokasi gambar bayam
      'price': 8000, // Harga dalam IDR
      'stock': 8, // Jumlah stok
    },
    // Tambahkan sayuran lainnya jika diperlukan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Toko Sayur Online',
          style: TextStyle(
            fontFamily: 'Poppins', // Menggunakan font modern
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 72, 154, 101), // Warna segar dan cerah
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Aksi untuk tombol keranjang belanja (opsional)
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Teks selamat datang
            Text(
              'Selamat datang, $username!',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.green[800], // Warna sesuai tema pasar sayur
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // Tampilkan grid sayuran
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Dua kolom
                  childAspectRatio: 0.75, // Rasio aspek untuk item
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: vegetables.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4, // Efek bayangan pada kartu
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        // Gambar sayuran
                        Expanded(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                            child: Image.asset(
                              vegetables[index]['image']!, // Akses gambar dari data
                              width: double.infinity,
                              fit: BoxFit.cover, // Ukuran gambar penuh
                            ),
                          ),
                        ),
                        // Teks nama, deskripsi, harga, dan stok sayuran
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end, // Teks berada di bawah
                              children: [
                                Text(
                                  vegetables[index]['name']!,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  vegetables[index]['description']!,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Harga: Rp ${vegetables[index]['price']}', // Menampilkan harga
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.green[800],
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Stok: ${vegetables[index]['stock']}', // Menampilkan stok
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: vegetables[index]['stock'] > 0
                                        ? Colors.black
                                        : Colors.red, // Merah jika stok habis
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                const SizedBox(height: 8),
                                ElevatedButton.icon(
                                  icon: const Icon(Icons.add_shopping_cart, color: Colors.white),
                                  onPressed: vegetables[index]['stock'] > 0
                                      ? () {
                                          // Aksi untuk menambahkan ke keranjang
                                        }
                                      : null, // Nonaktifkan jika stok habis
                                  label: const Text(
                                    'Masukkan ke Keranjang',
                                    style: TextStyle(
                                        fontSize: 14, fontFamily: 'Poppins', color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: vegetables[index]['stock'] > 0
                                        ? const Color.fromARGB(255, 72, 154, 101)
                                        : Colors.grey, // Warna abu-abu jika stok habis
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            // Tombol untuk melihat profil dan tentang kami
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.person_outline, size: 24, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilePage(
                          username: username,
                          email: email,
                          address: address,
                        ),
                      ),
                    );
                  },
                  label: const Text(
                    'Lihat Profil',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      color: Colors.white, // Warna teks putih
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 211, 180, 138), // Warna cerah
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.info_outline, size: 24, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AboutPage()),
                    );
                  },
                  label: const Text(
                    'Tentang Kami',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      color: Colors.white, // Warna teks putih
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 211, 180, 138), // Warna cerah
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aksi untuk belanja atau keranjang
        },
        backgroundColor: const Color.fromARGB(255, 72, 154, 101), // Warna segar
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
