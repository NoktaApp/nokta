import 'package:flutter/material.dart';

//! Diğer yan sayfaların tanımlanması
import 'package:noktaapp/widgets/my_drawer.dart';

class NoktaYakala extends StatefulWidget {
  const NoktaYakala({Key? key}) : super(key: key);

  @override
  _NoktaYakalaState createState() => _NoktaYakalaState();
}

class _NoktaYakalaState extends State<NoktaYakala> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Nokta App Nokta Yakala"),
      ),
      drawer: const MyDrawer(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: const Center(
          child: Text("Nokta Yakala"),
        ),
      ),
    );
  }
}
