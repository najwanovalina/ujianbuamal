import 'package:flutter/material.dart';
import 'katalog_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text(
          'Log In - Najwa Novalina',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          const Divider(height: 1, thickness: 1, color: Colors.black12),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon Logo TechExpress (Warna Biru Cerah)
                    const Icon(
                      Icons.devices,
                      size: 90,
                      color: Color.fromARGB(255, 54, 122, 178),
                    ),
                    const SizedBox(height: 20),

                    // Judul Selamat Datang
                    const Text(
                      'Selamat Datang di TechExpress',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D3142),
                      ),
                    ),
                    const SizedBox(height: 40),

                    // Tombol Masuk Langsung (Tanpa Username & Password)
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2196F3),
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          // Navigasi Navigator.push() menuju halaman KatalogScreen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const KatalogScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Masuk',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}