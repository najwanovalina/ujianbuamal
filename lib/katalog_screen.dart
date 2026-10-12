import 'package:flutter/material.dart';
import 'detail_page.dart';

class KatalogScreen extends StatefulWidget {
  const KatalogScreen({super.key});

  @override
  State<KatalogScreen> createState() => _KatalogScreenState();
}

class _KatalogScreenState extends State<KatalogScreen> {
  int _currentIndex = 0; // Index menu bawah (0 = Katalog)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TechExpress - Katalog'),
      ),
      body: Column(
        children: [
          // Divider di bawah AppBar
          const Divider(height: 1, thickness: 1, color: Colors.blueGrey),
          
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Header Atas
                  const Icon(Icons.devices, size: 50, color: Colors.blue),
                  const Text(
                    'Gadget',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Najwa',
                    style: TextStyle(fontSize: 16, color: Colors.blueAccent),
                  ),
                  const SizedBox(height: 20),
                  
                  // FITUR MANDATORI: Card dibungkus GestureDetector
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke DetailPage menggunakan Navigator.push()
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailPage(),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            // Icon Gadget Produk
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Icon(
                                Icons.phone_android,
                                size: 40,
                                color: Colors.blue,
                              ),
                            ),
                            const SizedBox(width: 16),
                            
                            // Informai Produk
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Samsung Galaxy S24',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Rp12.000.000',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      
      // BottomNavigationBar untuk Navigasi Menu
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 1) {
            // FITUR MANDATORI: Menggunakan Navigator.pushNamed menuju Profile
            Navigator.pushNamed(context, '/profile');
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Katalog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}