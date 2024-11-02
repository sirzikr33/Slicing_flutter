import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'cart.dart';
import 'order.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbhak Mart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
} 
class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Untuk menyimpan index dari item yang dipilih

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
                  onTap: () {},
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
                    child: const Icon(CupertinoIcons.bars),
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
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: const Text(
              "Kategori",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const Kategori(),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20),
            child: const Text(
              "All food",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const Allfood(),
        ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 1) { // Navigasi ke CartScreen jika icon cart diklik
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartScreen()),
            );
          }
          else if (index == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductListScreen()), // Navigasi ke ProductListScreen
                );
              }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Orders',
          ),
        ],
      ),
    );
  }
}

class Kategori extends StatelessWidget {
  const Kategori({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // Kategori All
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/burger1.jpeg",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8), // Memberi jarak antara gambar dan teks
                const Text("All"), // Teks untuk kategori
              ],
            ),
          ),
          
          // Kategori Makanan
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/burger1.jpeg",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text("Makanan"),
              ],
            ),
          ),
          
          // Kategori Minuman
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/jus1.jpeg",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text("Minuman"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Allfood extends StatelessWidget {
  const Allfood({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Column( // Mengubah dari Row menjadi Column
        children: [
          // Row pertama dengan dua produk
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildProductContainer("assets/burger1.jpeg", "Burger King Medium", "Rp 30.000"),
              buildProductContainer("assets/jus1.jpeg", "Jus jeruk", "Rp 10.000"),
            ],
          ),
          const SizedBox(height: 20), // Jarak antara Row pertama dan kedua
          
          // Row kedua dengan dua produk
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildProductContainer("assets/burger1.jpeg", "Burger King Large", "Rp 50.000"),
              buildProductContainer("assets/jus1.jpeg", "Jus Mangga", "Rp 10.000"),
            ],
          ),

          const SizedBox(height: 20), 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildProductContainer("assets/burger1.jpeg", "Burger King Medium", "Rp 30.000"),
              buildProductContainer("assets/burger1.jpeg", "Burger King Medium", "Rp 30.000"),
            ],
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membangun Container produk
  Widget buildProductContainer(String imagePath, String title, String price) {
    return Container(
      width: 170,
      height: 205,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 115, 114, 114),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                width: 150,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 25, 221, 3),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    CupertinoIcons.plus,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



