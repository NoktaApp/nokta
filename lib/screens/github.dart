import 'package:flutter/material.dart';

//! Diğer yan sayfaların tanımlanması
import 'package:noktaapp/widgets/my_drawer.dart';

class GitHub extends StatefulWidget {
  const GitHub({Key? key}) : super(key: key);

  @override
  _GitHubState createState() => _GitHubState();
}

class _GitHubState extends State<GitHub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Nokta App GitHub"),
      ),
      drawer: const MyDrawer(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: const Center(
          child: Text("GitHub"),
        ),
      ),
    );
  }
}
