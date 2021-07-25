import 'package:flutter/material.dart';

//! Diğer yan sayfaların tanımlanması
import 'package:noktaapp/widgets/my_drawer.dart';

class NoktaBul extends StatefulWidget {
  const NoktaBul({Key? key}) : super(key: key);

  @override
  _NoktaBulState createState() => _NoktaBulState();
}

class _NoktaBulState extends State<NoktaBul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Nokta App Nokta Bul"),
      ),
      drawer: const MyDrawer(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: const Center(
          child: Text("Nokta Bul"),
        ),
      ),
    );
  }
}
