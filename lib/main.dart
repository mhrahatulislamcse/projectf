import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projectf/util/theme/theme.dart';
import 'features/splash/presentation/splash_viewmodel.dart';

void main() async {
  // ১. বাইন্ডিং এনসিওর করতে হবে
  WidgetsFlutterBinding.ensureInitialized();
  
  // ২. ফায়ারবেস ইনিশিয়ালাইজ করতে হবে
  await Firebase.initializeApp();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const SplashView(),
    );
  }
}
