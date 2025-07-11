import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import './landing.dart';
import './projects.dart';
import './experience.dart';
import './contact.dart';
import './footer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ItemScrollController _scrollController = ItemScrollController();

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
        endDrawer: Drawer(
          backgroundColor: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'JP Rivera',
                  style: TextStyle(color: Colors.white, fontFamily: 'Gotham'),
                ),
                accountEmail: Text(
                  'jprivera739@gmail.com',
                  style: TextStyle(color: Colors.white, fontFamily: 'Gotham'),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.cyan,
                      Color.fromARGB(222, 168, 85, 247),
                      Colors.pinkAccent,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
              ListTile(
                title: const Text(
                  'ABOUT',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  _scrollController.scrollTo(
                    index: 0,
                    duration: Duration(milliseconds: 300),
                  );
                },
              ),
              ListTile(
                title: const Text(
                  'PROJECTS',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  _scrollController.scrollTo(
                    index: 1,
                    duration: Duration(milliseconds: 300),
                  );
                },
              ),
              ListTile(
                title: const Text(
                  'SKILLS',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  _scrollController.scrollTo(
                    index: 2,
                    duration: Duration(milliseconds: 300),
                  );
                },
              ),
              ListTile(
                title: const Text(
                  'CONTACT',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  _scrollController.scrollTo(
                    index: 3,
                    duration: Duration(milliseconds: 300),
                  );
                },
              ),
            ],
          ),
        ),
        //body: ListView(children: [Landing(), Projects(), Experience(),]),
        body: ScrollablePositionedList.builder(
          itemScrollController: _scrollController,
          itemCount: 5,
          itemBuilder: (context, index) {
            return [
              Landing(desktopFontSize: 96, mobileFontSize: 60),
              Projects(desktopFontSize: 72, mobileFontSize: 48),
              Experience(),
              Contact(),
              Footer(),
            ][index];
          },
        ),
      ),
    );
  }
}
