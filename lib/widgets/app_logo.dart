import 'package:flutter/material.dart';

class Applogo extends StatelessWidget {
  const Applogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(4),
          ),
          padding: EdgeInsets.all(10),
          child: Text(
            'News',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
