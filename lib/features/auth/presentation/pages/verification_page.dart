import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/auth_button.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text("Verification",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

            const SizedBox(height: 30),

            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Code",
              ),
            ),

            const SizedBox(height: 20),

            AuthButton(
              title: "Verify",
              onTap: () {
                context.go('/login');
              },
            )
          ],
        ),
      ),
    );
  }
}
