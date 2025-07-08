import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final String title;
  final String percent;
  final List colors;

  const ProgressBar({
    super.key,
    required this.title,
    required this.percent,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'segoe',
                ),
              ),
              Spacer(),
              Text(
                percent,
                style: TextStyle(
                  color: Color.fromARGB(
                    colors[0],
                    colors[1],
                    colors[2],
                    colors[3],
                  ),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(colors[0], colors[1], colors[2], colors[3]),
                  Color.fromARGB(colors[0], colors[1], colors[2], colors[3]),
                  Colors.black,
                ],
                stops: [0, 0.1, 1],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            height: 10,
          ),
        ],
      ),
    );
  }
}
