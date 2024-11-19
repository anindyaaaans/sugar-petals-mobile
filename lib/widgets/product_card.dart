import 'package:flutter/material.dart';
import 'package:sugar_petals/screens/productentry_form.dart';
import 'package:sugar_petals/screens/list_productentry.dart';
import 'package:sugar_petals/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}

class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, // Menghilangkan warna default dari Material
      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));

          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Produk") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductEntryFormPage()),
            );
          }
          else if (item.name == "Lihat Produk") {
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => const ProductEntryPage()
                  ),
              );
          }
        },
        // Container untuk menyimpan warna latar belakang dan border radius
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: item.color, // Menggunakan item.color sebagai background
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const SizedBox(height: 3),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
