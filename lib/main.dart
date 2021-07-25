import 'package:flutter/material.dart';

//! Diğer yan sayfaların tanımlanması
import 'package:noktaapp/screens/anasayfa.dart';
import 'package:noktaapp/screens/neredeyim.dart';
import 'package:noktaapp/screens/nokta_yakala.dart';
import 'package:noktaapp/screens/nokta_bul.dart';
import 'package:noktaapp/screens/rakim.dart';
import 'package:noktaapp/screens/ayarlar.dart';
import 'package:noktaapp/screens/katkida_bulunanlar.dart';
import 'package:noktaapp/screens/kullanma_kilavuzu.dart';
import 'package:noktaapp/screens/github.dart';
//? widgets myDrawer
//import 'package:noktaapp/widgets/my_drawer.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Anasayfa(),
        "/neredeyim": (context) => const Neredeyim(),
        "/nokta_yakala": (context) => const NoktaYakala(),
        "/nokta_bul": (context) => const NoktaBul(),
        "/rakim": (context) => const Rakim(),
        "/ayarlar": (context) => const Ayarlar(),
        "/katkida_bulunanlar": (context) => const KatkidaBulunanlar(),
        "/kullanma_kilavuzu": (context) => const KullanmaKilavuzu(),
        "/github": (context) => const GitHub(),
      },
    ),
  );
}

/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nokta App"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("NOKTA APP"),
      ),
    );
  }
}
*/

