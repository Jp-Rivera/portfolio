import 'package:flutter/material.dart';
import './landing.dart';
import './projects.dart';
import './experience.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Shader gradient = const LinearGradient(
      colors: [Colors.cyan, Colors.purple, Color.fromARGB(255, 236, 72, 153)],
    ).createShader(Rect.fromLTRB(0, 0, 200.0, 200.0));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),

      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          toolbarHeight: 65,
          backgroundColor: Colors.black,
          shape: Border(
            bottom: BorderSide(
              color: Color.fromARGB(150, 34, 211, 238),
              width: 0.5,
            ),
          ),
          title: Text(
            'JP.RIVERA',
            style: TextStyle(
              fontFamily: 'sageobold',
              fontWeight: FontWeight.bold,
              fontSize: 24,
              letterSpacing: -1,
              foreground: Paint()..shader = gradient,
            ),
          ),
        ),
        endDrawer: Drawer(),
        body: ListView(children: [Landing(), Projects(), Experience()]),
      ),
    );
  }
}
