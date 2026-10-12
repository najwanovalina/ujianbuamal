import 'package:flutter/material.dart';

class VoucherPage extends StatelessWidget {
  const VoucherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Voucher', style: TextStyle(fontWeight: FontWeight.bold)),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const Divider(height: 1, thickness: 1, color: Colors.black12),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const Text(
                  'Pilih Voucher Anda',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),

                Card(
                  elevation: 0,
                  color: const Color(0xFFF5F0E5).withAlpha((0.5 * 255).round()),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                    side: const BorderSide(color: Colors.blue),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    leading: const Icon(Icons.local_offer, color: Colors.teal),
                    title: const Text('Voucher Diskon 10%', style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: const Icon(Icons.chevron_right, color: Colors.teal),
                    onTap: () => Navigator.pop(context, 10),
                  ),
                ),
                const SizedBox(height: 12),

                Card(
                  elevation: 0,
                  color: const Color(0xFFF5F0E5).withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                    side: const BorderSide(color: Colors.blue),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    leading: const Icon(Icons.local_offer, color: Colors.teal),
                    title: const Text('Voucher Diskon 20%', style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: const Icon(Icons.chevron_right, color: Colors.teal),
                    onTap: () => Navigator.pop(context, 20),
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