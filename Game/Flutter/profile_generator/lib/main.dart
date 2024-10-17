import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Login Profile',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _sekolahController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/backgrounds.jpg"), // replace with your image
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40.0, left: 20.0, right: 20.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,  
          children: [
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Masukan Profile Mu!",
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Isi Profile-nya disini sob!",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: _usernameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukan username';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    hintText: 'Input nama anda',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 98, 98, 98),
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukan sekolah';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  // obscureText: true,
                  controller: _sekolahController,
                  decoration: InputDecoration(
                    labelText: 'Sekolah',
                    hintText: 'Input nama sekolah',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 98, 98, 98),
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukan Role';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  // obscureText: true,
                  controller: _roleController,
                  decoration: InputDecoration(
                    labelText: 'Role',
                    hintText: 'Input Role',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 98, 98, 98),
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukan Deskripsi Singkat';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  // obscureText: true,
                  controller: _descController,
                  decoration: InputDecoration(
                    labelText: 'Deskripsi Singkat',
                    hintText: 'Input Deskripsi Singkat',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 98, 98, 98),
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                        )),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                if (_usernameController.text.isEmpty ||
                    _sekolahController.text.isEmpty ||
                    _roleController.text.isEmpty ||
                    _descController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(
                        'Isi form login dengan lengkap!',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(
                        username: _usernameController.text,
                        sekolah: _sekolahController.text,
                        role: _roleController.text,
                        deskripsi: _descController.text,
                      ),
                    ),
                  );
                }
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 74, 202, 0),
                ),
                child: Center(
                  child: Text(
                    "Login Kuy!",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.username, required this.sekolah, required this.deskripsi, required this.role});
  final String username;
  final String sekolah;
  final String role;
  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context)
            .size
            .width, //Lebar diatur sesuai dengan lebar layar
        height: MediaQuery.of(context)
            .size
            .height, //Tinggi diatur sesuai dengan tinggi layar
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: const Color.fromARGB(200, 122, 28, 172),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage('images/fotoprofil.jpg'),
                      ),
                      Text(
                        username,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        sekolah,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        role,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        deskripsi,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      const Text("Bogor City, Indonesia",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(248, 255, 255, 255))),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const Page2()));
                        },
                        child: const Text(
                          'See More',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
