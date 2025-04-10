import 'package:flutter/material.dart';

class ResultTexts extends StatelessWidget {
  final String title;
  final String artist;

  const ResultTexts({super.key, required this.title, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Pretendard",
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          artist,
          style: TextStyle(
            color: Color.fromARGB(255, 113, 123, 133),
            fontFamily: "Pretendard",
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
