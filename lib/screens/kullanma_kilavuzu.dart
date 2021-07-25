import 'package:flutter/material.dart';

//! Diğer yan sayfaların tanımlanması
import 'package:noktaapp/widgets/my_drawer.dart';

class KullanmaKilavuzu extends StatefulWidget {
  const KullanmaKilavuzu({Key? key}) : super(key: key);

  @override
  _KullanmaKilavuzuState createState() => _KullanmaKilavuzuState();
}

class _KullanmaKilavuzuState extends State<KullanmaKilavuzu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Nokta App Kullanma Kılavuzu"),
      ),
      drawer: const MyDrawer(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: const Center(
          child: Text("Kullanma Kılavuzu"),
        ),
      ),
    );
  }
}
