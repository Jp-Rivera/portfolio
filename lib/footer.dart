import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text(
        'JP Rivera 2025               Made with Passion',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'spacemono',
          fontSize: 15,
          letterSpacing: -1,
          color: Colors.white,
        ),
      ),
    );
  }
}
