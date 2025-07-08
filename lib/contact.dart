import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color.fromRGBO(34, 24, 49, 1), Colors.black],
          stops: [0.0, 0.30],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Text(
            'LET\'S',
            style: TextStyle(
              fontFamily: 'segoebold',
              fontWeight: FontWeight.w800,
              fontSize: 48,
              letterSpacing: -5,
              color: Colors.white,
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0, -30.0, 0),
            child: Text(
              'COLLABORATE',
              style: TextStyle(
                fontFamily: 'segoebold',
                fontWeight: FontWeight.w800,
                fontSize: 48,
                letterSpacing: -5,
                foreground: Paint()
                  ..shader = const LinearGradient(
                    colors: [
                      Color.fromARGB(222, 34, 211, 238),
                      Color.fromARGB(222, 168, 85, 247),
                    ],
                  ).createShader(Rect.fromLTRB(0, 0, 400.0, 200.0)),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                transform: Matrix4.translationValues(0, -25.0, 0),
                width: 392,
                height: 600,
                child: Column(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color.fromRGBO(34, 24, 49, 1),
                            Colors.black,
                          ],
                          stops: [0.0, 0.30],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        border: Border.all(
                          color: const Color.from(
                            alpha: 0.309,
                            red: 0.569,
                            green: 0.569,
                            blue: 0.569,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Name',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 28),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 28),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Message',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      maxLines: 5,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 28),
                    TextButton(
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                      ),
                      onPressed: () {},
                      child: Ink(
                        width: 157,
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.cyan,
                              Color.fromARGB(222, 192, 132, 252),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'SEND MESSAGE',
                            style: TextStyle(
                              fontFamily: 'segoebold',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
