import 'package:flutter/material.dart';
import '../../../../home_page.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Map Illustration placeholder
            Image.asset(
              'assets/images/map/map_pin.png', // আপনার ম্যাপ পিন ইমেজ পাথ
              height: 250,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.location_on, size: 100, color: Color(0xFFFF7622)),
              ),
            ),
            const SizedBox(height: 50),
            // Access Location Button
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF7622),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                icon: const Icon(Icons.location_on, color: Colors.white),
                label: const Text(
                  "ACCESS LOCATION",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "DFOOD WILL ACCESS YOUR LOCATION\nONLY WHILE USING THE APP",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFF646982), fontSize: 13, height: 1.5),
            )
          ],
        ),
      ),
    );
  }
}
