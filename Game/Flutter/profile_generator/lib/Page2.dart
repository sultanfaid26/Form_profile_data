import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // Menghilangkan bayangan pada AppBar
        backgroundColor: Colors.transparent, // Membuat AppBar transparan
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop(); // Kembali ke halaman sebelumnya
          },
        ),
      ),
      body: Stack(
        children: [
          // Background image
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background.jpg"), // Ganti dengan path gambar Anda
                fit: BoxFit.cover, // Agar gambar sesuai dengan ukuran layar
              ),
            ),
          ),
          
          // Konten di atas background
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Bagian gambar profil dan nama pengguna
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/fotoprofil.jpg'),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Sultan Faid Amani',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color:Color.fromARGB(255, 253, 249, 255)
                  ),
                ),
                const SizedBox(height: 20),

                // Bagian About
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                    color: const Color.fromARGB(255, 122, 28, 172),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Saya Sultan Faid Amani dan saya adalah seorang siswa SMK dari sekolah SMK Wikrama Bogor yang berjurusan PPLG (Pengembangan Perangkat Lunak dan Gim).',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Bagian History
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                    color: const Color.fromARGB(255, 122, 28, 172),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'History',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Saya lahir di bogor tanggal 26 Mei 2007 dan saya menjenjang pendidikan dari TK, SD, SMP, lalu SMK. Saya TK di TK Pertiwi di bantar kemang, katulampa. saya SD di SIT AL-Khairiyah yaitu sekolah berbasis islam, lalu saya bersekolah SMP di SMP Pesat Rising Star di Loji, Gunung Batu.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Bagian Skill
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                    color: const Color.fromARGB(255, 122, 28, 172),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Skill',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Saya memiliki pengalaman yang luas dalam pengembangan web, khususnya dalam penggunaan teknologi HTML, CSS, Laravel, dan Python. Dengan HTML dan CSS, saya mampu membangun tampilan web yang responsif dan menarik secara visual, serta memastikan pengalaman pengguna yang optimal di berbagai perangkat.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
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
  }
}