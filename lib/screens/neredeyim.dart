import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

//! Diğer yan sayfaların tanımlanması
import 'package:noktaapp/widgets/my_drawer.dart';

class Neredeyim extends StatefulWidget {
  const Neredeyim({Key? key}) : super(key: key);

  @override
  _NeredeyimState createState() => _NeredeyimState();
}

class _NeredeyimState extends State<Neredeyim> {
  String _locationMessage = "";

  void _getCurrentLocation() async {
    //? Sürekli olarak değer döndürmesi için while(true)
    while (true) {
      //? Koordinat değerlerinin Geolocator öğrenilme işlemi
      final position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      // ignore: avoid_print
      //print(position);

      setState(() {
        _locationMessage =
            "Enlem: ${position.latitude}\nBoylam: ${position.longitude}\n";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Neredeyim WGS 84"),
      ),
      drawer: const MyDrawer(),
      // ignore: avoid_unnecessary_containers
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_locationMessage),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                _getCurrentLocation();
              },
              color: Colors.green,
              child: const Text("Konumu Bul"),
            )
          ],
        ),
      ),
    );
  }
}
