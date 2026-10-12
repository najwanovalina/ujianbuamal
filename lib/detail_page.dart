import 'package:flutter/material.dart';
import 'voucher_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final double _hargaAwal = 12000000;
  String _teksVoucher = 'Belum ada voucher';
  double _hargaAkhir = 12000000;

  String _formatRupiah(double val) {
    return 'Rp${val.toInt().toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]}.',
    )}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Gadget - Najwa', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          const Divider(height: 1, thickness: 1, color: Colors.black12),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  // Display Icon Produk
                  Container(
                    padding: const EdgeInsets.all(28),
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade50,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.phone_android,
                      size: 90,
                      color: Colors.indigo,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Detail Info Container
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.04),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Nama Produk', style: TextStyle(fontSize: 12, color: Colors.grey)),
                        const Text(
                          'Samsung Galaxy S24',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Divider(height: 24, thickness: 0.5),

                        const Text('Harga Awal', style: TextStyle(fontSize: 12, color: Colors.grey)),
                        Text(
                          _formatRupiah(_hargaAwal),
                          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        const Divider(height: 24, thickness: 0.5),

                        const Text('Voucher Diskon', style: TextStyle(fontSize: 12, color: Colors.grey)),
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.orange.shade50,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            _teksVoucher,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange.shade800,
                            ),
                          ),
                        ),
                        const Divider(height: 24, thickness: 0.5),

                        const Text('Harga Setelah Voucher', style: TextStyle(fontSize: 12, color: Colors.grey)),
                        Text(
                          _formatRupiah(_hargaAkhir),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 28),

                  // Tombol Klaim Voucher
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      icon: const Icon(Icons.confirmation_num_outlined, color: Colors.white),
                      label: const Text(
                        'Klaim Voucher Diskon',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      onPressed: () async {
                        // Menunggu hasil kiriman Navigator.pop()
                        final int? diskon = await Navigator.push<int>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VoucherPage(),
                          ),
                        );

                        // Perubahan data otomatis via setState()
                        if (diskon != null) {
                          setState(() {
                            _teksVoucher = 'Diskon $diskon%';
                            _hargaAkhir = _hargaAwal - (_hargaAwal * diskon / 100);
                          });
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}