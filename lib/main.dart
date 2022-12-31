import 'package:abhi_portfolio_proj/coolors.dart';
import 'package:abhi_portfolio_proj/home.dart';
import 'package:abhi_portfolio_proj/middleScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyDOsR31XqBZu1JMiFdpQJby04Jz17YtMww",
    projectId: "abhi-portfolio-ba0a2",
    messagingSenderId: "104921783787",
    appId: "1:104921783787:web:243b3a551bd3104e268dae",
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange)
            .copyWith(secondary: Coolers.accentColor),
      ),
      home: const HomeScreen(),
      //const ExamplePage(),
    );
  }
}
