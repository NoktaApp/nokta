import 'package:flutter/material.dart';

//! Diğer yan sayfaların tanımlanması
import 'package:noktaapp/widgets/my_drawer.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Nokta App Anasayfa"),
      ),
      drawer: const MyDrawer(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: const Center(
          child: Text("Anasayfa"),
        ),
      ),
    );
  }
}
