import 'package:flutter/material.dart';

//! Diğer yan sayfaların tanımlanması
import 'package:noktaapp/widgets/my_drawer.dart';

class Rakim extends StatefulWidget {
  const Rakim({Key? key}) : super(key: key);

  @override
  _RakimState createState() => _RakimState();
}

class _RakimState extends State<Rakim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Nokta App Rakım"),
      ),
      drawer: const MyDrawer(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: const Center(
          child: Text("Rakım"),
        ),
      ),
    );
  }
}
