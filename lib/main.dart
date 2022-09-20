import 'package:flutter/material.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:pkapp/desktop_login_page.dart';
import 'package:pkapp/desktop_navbar.dart';
import 'package:pkapp/mobile_navbar.dart';
//
import 'package:pkapp/desktop_screen.dart';
import 'package:pkapp/mobile_screen.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'database.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyBoYIY4V6Z_pngE1evQAKTuQc7Nue4JWNw",
    appId: "1:947254339969:web:54e012b6646ea33f0ce080",
    messagingSenderId: "947254339969",
    projectId: "flutter-with-firebase-83020",
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeapp(),
    );
  }
}

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(MaterialApp(
//     title: "<Flutter-Site>",
//     home: homeapp(),
//     theme: ThemeData(primarySwatch: Colors.pink),
//     debugShowCheckedModeBanner: false,
//   ));
// }

class homeapp extends StatelessWidget {
  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  const homeapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: _scaffoldKey,
      drawer: menu_bar(),
      appBar: PreferredSize(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue, Colors.pink])),
            //child: navbar(),
            //child: mobile_nabar(),
            //child: MediaQuery.of(context).size.width < 852 ? mobile_nabar() : navbar(),
            child: versions_navbar(),
          ),
          preferredSize: Size(MediaQuery.of(context).size.width, 1000)),
      //extendBodyBehindAppBar: true,
      body: versions_screen(),
    );
  }
}

class versions_navbar extends StatelessWidget {
  const versions_navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth < 852) {
          return mobile_navbar();
        } else {
          return navbar();
        }
      }),
    );
  }
}

class versions_screen extends StatelessWidget {
  const versions_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth < 852) {
          return mobile_screen();
        } else {
          return desktop_screen();
        }
      }),
    );
  }
}
