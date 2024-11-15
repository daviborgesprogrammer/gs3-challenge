import 'package:flutter/material.dart';

class SecretDots extends StatelessWidget {
  const SecretDots({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.circle,
          color: Colors.white,
          size: 6.25,
        ),
        SizedBox(width: 2.79),
        Icon(
          Icons.circle,
          color: Colors.white,
          size: 6.25,
        ),
        SizedBox(width: 2.79),
        Icon(
          Icons.circle,
          color: Colors.white,
          size: 6.25,
        ),
        SizedBox(width: 2.79),
        Icon(
          Icons.circle,
          color: Colors.white,
          size: 6.25,
        ),
      ],
    );
  }
}
