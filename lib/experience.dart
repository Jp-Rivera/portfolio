import 'package:flutter/material.dart';
import 'components/progress_bar.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color.fromRGBO(34, 24, 49, 1), Colors.black],
          stops: [0.0, 0.30],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CREATIVE',
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
                'TECHNOLOGIST',
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
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'segoe',
                    fontSize: 20,
                    letterSpacing: -1,
                    color: Colors.white,
                  ),
                  text: 'I\'m a ',
                  children: [
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'segoe',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -1,
                        color: Colors.cyan,
                      ),
                      text: 'front-end developer ',
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'segoe',
                        fontSize: 20,
                        letterSpacing: -1,
                        color: Colors.white,
                      ),
                      text:
                          'with a passion for creating extraordinary digital experiences. My work sits at the intersection of ',
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'segoe',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -1,
                        color: Color.fromARGB(222, 192, 132, 252),
                      ),
                      text: 'technology and art',
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'segoe',
                        fontSize: 20,
                        letterSpacing: -1,
                        color: Colors.white,
                      ),
                      text: '.',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 20, 0),
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'segoe',
                    fontSize: 20,
                    letterSpacing: -1,
                    color: Colors.white,
                  ),
                  text: 'With over ',
                  children: [
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'segoe',
                        fontSize: 20,
                        letterSpacing: -1,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 236, 72, 153),
                      ),
                      text: '7 years ',
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'segoe',
                        fontSize: 20,
                        letterSpacing: -1,
                        color: Colors.white,
                      ),
                      text:
                          'of experience, I specialize in building scalable web applications that don\'t just function—they inspire. ',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ProgressBar(
                          title: 'Javascript',
                          percent: '95%',
                          colors: [255, 0, 188, 212],
                        ),
                        ProgressBar(
                          title: 'HTML/CSS',
                          percent: '90%',
                          colors: [222, 168, 85, 247],
                        ),
                        ProgressBar(
                          title: 'Flutter',
                          percent: '88%',
                          colors: [255, 236, 72, 153],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
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
                      height: 5,
                      child: Center(
                        child: SizedBox(
                          width: 500,
                          height: 60,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
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
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      transform: Matrix4.translationValues(0, -25.0, 0),
                      width: 392,
                      height: 266,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.from(
                              alpha: 0.309,
                              red: 0.569,
                              green: 0.569,
                              blue: 0.569,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 30, 0, 30),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 32,
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.cyan,
                                      size: 40,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      10,
                                      5,
                                      0,
                                      0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'JP Rivera',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Container(
                                          transform: Matrix4.translationValues(
                                            0,
                                            -5.0,
                                            0,
                                          ),
                                          child: Text(
                                            'Creative Developer',
                                            style: TextStyle(
                                              color: Colors.cyan,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'spacemono',
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(40, 0, 0, 20),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.code,
                                    color: Colors.cyan,
                                    size: 20,
                                  ),
                                  Spacer(flex: 1),
                                  Text(
                                    '10,000+ lines of code',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'segoe',
                                    ),
                                  ),
                                  Spacer(flex: 10),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(40, 0, 0, 20),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.brush,
                                    color: Colors.pinkAccent,
                                    size: 20,
                                  ),
                                  Spacer(flex: 1),
                                  Text(
                                    '10+ creative projects',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'segoe',
                                    ),
                                  ),
                                  Spacer(flex: 10),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(40, 0, 0, 20),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.coffee_rounded,
                                    color: Color.fromARGB(222, 168, 85, 247),
                                    size: 20,
                                  ),
                                  Spacer(flex: 1),
                                  Text(
                                    '7+ years of work experience',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'segoe',
                                    ),
                                  ),
                                  Spacer(flex: 7),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
