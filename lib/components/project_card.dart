import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String descr;
  final double rotation;

  const ProjectCard({
    super.key,
    required this.title,
    required this.descr,
    required this.rotation,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotation,
      child: SizedBox(
        width: 336,
        height: 336,
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
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'WEB APP',
                  style: TextStyle(color: Colors.cyan, fontFamily: 'spacemono'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      letterSpacing: -1,
                      fontFamily: 'segoebold',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Text(
                    descr,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      letterSpacing: -1,
                      fontFamily: 'segoebold',
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 65,
                      height: 25,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(40, 255, 255, 255),
                          border: Border.all(
                            color: const Color.from(
                              alpha: 0.309,
                              red: 0.569,
                              green: 0.569,
                              blue: 0.569,
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Flutter',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 65,
                        height: 25,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(40, 255, 255, 255),
                            border: Border.all(
                              color: const Color.from(
                                alpha: 0.309,
                                red: 0.569,
                                green: 0.569,
                                blue: 0.569,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Firebase',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 300,
                      height: 60,
                      child: OutlinedButton.icon(
                        label: Text(
                          'VIEW PROJECT',
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
