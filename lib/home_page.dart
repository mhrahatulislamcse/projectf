import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            child: const Icon(Icons.menu, color: Color(0xFF32343E)),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("DELIVER TO", style: TextStyle(color: Color(0xFFFF7622), fontSize: 12, fontWeight: FontWeight.bold)),
            Text("Halal Lab Office", style: TextStyle(color: Color(0xFF676767), fontSize: 14)),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(backgroundColor: const Color(0xFF181C2E), child: const Icon(Icons.shopping_bag_outlined, color: Colors.white)),
                Positioned(
                  top: 5, right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(color: Color(0xFFFF7622), shape: BoxShape.circle),
                    child: const Text("2", style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hey Halal, Good Afternoon!", style: TextStyle(fontSize: 16, color: Color(0xFF32343E))),
            const SizedBox(height: 15),
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search dishes, restaurants",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: const Color(0xFFF6F6F6),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 25),
            // Categories
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("All Categories", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                TextButton(onPressed: () {}, child: const Text("See All >", style: TextStyle(color: Colors.grey))),
              ],
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _categoryItem("All", Icons.fastfood, true),
                  _categoryItem("Hot Dog", Icons.flatware, false),
                  _categoryItem("Burger", Icons.lunch_dining, false),
                  _categoryItem("Pizza", Icons.local_pizza, false),
                ],
              ),
            ),
            const SizedBox(height: 25),
            // Restaurants
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Open Restaurants", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                TextButton(onPressed: () {}, child: const Text("See All >", style: TextStyle(color: Colors.grey))),
              ],
            ),
            const SizedBox(height: 15),
            _restaurantCard("Rose Garden Restaurant", "Burger - Chicken - Riche - Wings", 4.7, "Free", 20),
            _restaurantCard("Cafenio Coffee Club", "Coffee - Snacks - Drinks", 4.0, "Free", 15),
          ],
        ),
      ),
    );
  }

  Widget _categoryItem(String title, IconData icon, bool isActive) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFFF7622) : Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.1), spreadRadius: 1, blurRadius: 5)],
      ),
      child: Row(
        children: [
          Icon(icon, color: isActive ? Colors.white : const Color(0xFFFF7622)),
          const SizedBox(width: 8),
          Text(title, style: TextStyle(color: isActive ? Colors.white : Colors.black, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _restaurantCard(String name, String type, double rating, String delivery, int time) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(20)),
          ),
          const SizedBox(height: 10),
          Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(type, style: TextStyle(color: Colors.grey, fontSize: 13)),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(Icons.star, color: Color(0xFFFF7622), size: 18),
              Text(" $rating", style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(width: 15),
              const Icon(Icons.delivery_dining, color: Color(0xFFFF7622), size: 18),
              Text(" $delivery"),
              const SizedBox(width: 15),
              const Icon(Icons.access_time, color: Color(0xFFFF7622), size: 18),
              Text(" ${time} min"),
            ],
          )
        ],
      ),
    );
  }
}
