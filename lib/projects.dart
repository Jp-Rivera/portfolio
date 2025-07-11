import 'package:flutter/material.dart';
import './components/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color.fromRGBO(34, 24, 49, 1), Colors.black],
          stops: [0.0, 0.10],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Text(
            'SELECTED',
            style: TextStyle(
              fontFamily: 'segoebold',
              fontWeight: FontWeight.w800,
              fontSize: 72,
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
          Container(
            transform: Matrix4.translationValues(0, -30.0, 0),
            child: Text(
              'WORKS',
              style: TextStyle(
                fontFamily: 'segoebold',
                fontWeight: FontWeight.w800,
                fontSize: 72,
                letterSpacing: -5,
                color: Colors.white,
              ),
            ),
          ),
          LayoutBuilder(
            builder: (_, constraints) {
              if (constraints.maxWidth >= 1000) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                      child: ProjectCard(
                        title: 'Magnolia Site',
                        descr:
                            'Concept E-commerce site for the Magnolia company.',
                        rotation: .03,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                      child: ProjectCard(
                        title: 'Lucio Marketing',
                        descr: 'Concept static site for marketing company.',
                        rotation: -.03,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                      child: ProjectCard(
                        title: 'KIKI',
                        descr: 'Audio sampling web app',
                        rotation: .03,
                      ),
                    ),
                  ],
                );
              } else {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                      child: ProjectCard(
                        title: 'Magnolia Site',
                        descr:
                            'Concept E-commerce site for the Magnolia company.',
                        rotation: .03,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                      child: ProjectCard(
                        title: 'Lucio Marketing',
                        descr: 'Concept static site for marketing company.',
                        rotation: -.03,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                      child: ProjectCard(
                        title: 'KIKI',
                        descr: 'Audio sampling web app',
                        rotation: .03,
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
