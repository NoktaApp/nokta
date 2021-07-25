import 'package:flutter/material.dart';

//! Diğer yan sayfaların tanımlanması
//import 'package:noktaapp/main.dart';
//import 'package:noktaapp/screens/anasayfa.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const Icon(
                    Icons.approval,
                    color: Colors.white,
                    size: 100.0,
                  ),
                  const Text(
                    "Nokta App",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          ),
          //! Uygulamada yan tarafta ki seçenekler için
          //? Anasayfa butonu için
          //! home
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Anasayfa'),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),

          //? Neredeyim butonu için
          //! not_listed_location
          ListTile(
            leading: const Icon(Icons.not_listed_location_outlined),
            title: const Text('Neredeyim'),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/neredeyim");
            },
          ),

          //? Nokta Yakala butonu için
          //! adjust_outlined
          ListTile(
            leading: const Icon(Icons.location_searching),
            title: const Text('Nokta Yakala'),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/nokta_yakala");
            },
          ),

          //? Nokta Bul butonu için
          //! location_pin
          ListTile(
            leading: const Icon(Icons.location_on_outlined),
            title: const Text('Nokta Bul'),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/nokta_bul");
            },
          ),

          //? Rakım butonu için
          ListTile(
            leading: const Icon(Icons.arrow_circle_up),
            title: const Text('Rakım'),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/rakim");
            },
          ),

          //? Ayarlar butonu için
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Ayarlar'),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/ayarlar");
            },
          ),

          //? Katkıda Bulunanlar butonu için
          ListTile(
            leading: const Icon(Icons.assignment_ind_outlined),
            title: const Text('Katkıda Bulunanlar'),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/katkida_bulunanlar");
            },
          ),

          //? Kullanma Kılavuzu butonu için
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Kullanma Kılavuzu'),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/kullanma_kilavuzu");
            },
          ),

          //? GitHub butonu için
          ListTile(
            leading: const Icon(Icons.insert_link),
            title: const Text('GitHub'),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/github");
            },
          ),
        ],
      ),
    );
  }
}
