import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context); // Kembali ke halaman sebelumnya
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
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 20),
                  child: Text(
                    "Cart",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
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
          // Tambahkan daftar item di sini
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                CartItem(
                  imageUrl: 'assets/burger1.jpeg',
                  title: 'Burger King Medium',
                  price: 'Rp 30.000,00',
                  quantity: 1,
                ),
                CartItem(
                  imageUrl: 'assets/jus1.jpeg',
                  title: 'Jus jeruk',
                  price: 'Rp 10.000,00',
                  quantity: 2,
                ),
                CartItem(
                  imageUrl: 'assets/burger1.jpeg',
                  title: 'Burger King Large',
                  price: 'Rp 50.000,00',
                  quantity: 1,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
            child: Harga(),
          ),
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final int quantity;

 CartItem({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageUrl,
              width: 130,
              height: 130,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 22),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  price,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Icon(
                    CupertinoIcons.minus,
                    color: Colors.black,
                    size: 16, // Atur ukuran ikon agar sesuai
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.zero, // Hapus padding default
                ),
              ),
              
              SizedBox(width: 8), // Tambahkan jarak antar elemen

              Text(
                '$quantity',
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(width: 8), // Tambahkan jarak antar elemen

              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Icon(
                    CupertinoIcons.plus,
                    color: Colors.black,
                    size: 16, // Atur ukuran ikon agar sesuai
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.zero, // Hapus padding default
                ),
              ),
            ],
          ),
          IconButton(
            icon: Icon(CupertinoIcons.delete, color: Colors.red),
            onPressed: () {}, // Placeholder onPressed
          ),
        ],
      ),
    );
  }
}

class Harga extends StatelessWidget {
    const Harga({super.key});
    @override
    Widget build(BuildContext context){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  const Text(
                    'Ringkasan Belanja',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'PPN 11%',
                          style :TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Rp 10.000',
                          style :TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 6),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Belanja',
                          style :TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Rp 90.000',
                          style :TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 6),
                  Container(
                    width : 400,
                    height: 1,
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  SizedBox(height: 8),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Pembayaran',
                          style :TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      
                      Text(
                        'Rp 100.000',
                          style :TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                  ],
                ),
                  SizedBox(height: 12),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width : 270,
                          height: 60,
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(55, 72, 228, 1),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(18),
                      ),
                      child : Center(
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
    }
}