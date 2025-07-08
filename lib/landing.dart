import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
          child: Text(
            'CREATIVE',
            style: TextStyle(
              fontFamily: 'segoebold',
              fontWeight: FontWeight.w800,
              fontSize: 60,
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
        Container(
          transform: Matrix4.translationValues(0, -30.0, 0),
          child: Text(
            'DEVELOPER',
            style: TextStyle(
              fontFamily: 'segoebold',
              fontWeight: FontWeight.w800,
              fontSize: 60,
              letterSpacing: -5,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 100, 0),
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                fontFamily: 'segoe',
                fontSize: 20,
                letterSpacing: -1,
                color: Colors.white,
              ),
              text: 'I craft ',
              children: [
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'segoe',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1,
                    color: Colors.cyan,
                  ),
                  text: 'digital experiences ',
                ),
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'segoe',
                    fontSize: 20,
                    letterSpacing: -1,
                    color: Colors.white,
                  ),
                  text: 'that push boundaries. Where ',
                ),
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'segoe',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1,
                    color: Color.fromARGB(222, 192, 132, 252),
                  ),
                  text: 'code meets art ',
                ),
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'segoe',
                    fontSize: 20,
                    letterSpacing: -1,
                    color: Colors.white,
                  ),
                  text: 'and innovation begins.',
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Row(
            children: [
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
                      colors: [Colors.cyan, Color.fromARGB(222, 192, 132, 252)],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'VIEW WORK',
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
              SizedBox(
                width: 208,
                height: 60,
                child: OutlinedButton.icon(
                  icon: const Icon(Icons.code, color: Colors.white),
                  label: Text(
                    'GET IN TOUCH',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      width: 2,
                      color: Color.fromARGB(100, 226, 232, 240),
                    ),
                    backgroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.zero),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Center(
              child: Stack(
                children: [
                  Opacity(
                    opacity: .3,
                    child: SizedBox(
                      width: 290,
                      height: 290,
                      child: Transform.rotate(
                        angle: 6.42,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            gradient: LinearGradient(
                              colors: [
                                Colors.cyan,
                                Color.fromARGB(222, 192, 132, 252),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Opacity(
                      opacity: .4,
                      child: SizedBox(
                        width: 280,
                        height: 280,
                        child: Transform.rotate(
                          angle: -0.1,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(222, 236, 72, 153),
                                  Color.fromARGB(222, 168, 85, 252),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Opacity(
                      opacity: 1,
                      child: SizedBox(
                        width: 270,
                        height: 270,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(width: 1.0, color: Colors.cyan),
                              bottom: BorderSide(
                                width: 1.0,
                                color: Colors.cyan,
                              ),
                              left: BorderSide(width: 1.0, color: Colors.cyan),
                              right: BorderSide(width: 1.0, color: Colors.cyan),
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                            gradient: LinearGradient(
                              colors: [Colors.black, Colors.black],
                            ),
                          ),
                          child: const Icon(
                            Icons.code,
                            color: Colors.cyan,
                            size: 64,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
