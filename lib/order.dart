import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'add_data.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Bagian navigasi atas
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    // Navigasi ke halaman AddData
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AddData()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 57, 57, 57),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Icon(CupertinoIcons.back),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 57, 57, 57),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Icon(CupertinoIcons.profile_circled),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AddData()),
                    );
                  },
                  child: Container(
                    width: 100,
                    height: 30,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(55, 72, 228, 1),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          CupertinoIcons.plus,
                          color: Colors.white,
                          size: 12,
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          'Add data',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Listfood(),
        ],
      ),
    );
  }
}

// Definisi halaman Listfood untuk menampilkan daftar item produk
class Listfood extends StatelessWidget {
  const Listfood({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Foto',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Nama Produk',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Harga',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Aksi',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          buildSeparator(),
          SizedBox(height: 10),
          buildItemRow("Burger King Large", "Rp 50.000", "assets/burger1.jpeg", context),
          SizedBox(height: 10),
          buildSeparator(),
          SizedBox(height: 10),
          buildItemRow("Jus Jeruk", "Rp 25.000", "assets/jus1.jpeg", context),
          SizedBox(height: 10),
          buildSeparator(),
          SizedBox(height: 10),
          buildItemRow("Burger king medium", "Rp 30.000", "assets/burger1.jpeg", context),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget buildItemRow(String productName, String price, String image, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            image,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Text(
            productName,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            price,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        IconButton(
          icon: const Icon(CupertinoIcons.delete, color: Colors.red),
          onPressed: () {}, // Placeholder onPressed
        ),
      ],
    );
  }

  Widget buildSeparator() {
    return Container(
      width: 400,
      height: 1,
      decoration: const BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.rectangle,
      ),
    );
  }
}