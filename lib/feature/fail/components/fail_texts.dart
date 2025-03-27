import 'package:flutter/material.dart';

class FailTexts extends StatelessWidget {
  const FailTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
      child: Align(
        alignment: Alignment.centerLeft, // Column을 왼쪽에 정렬
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Alpha Couldn't find the music ...",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Pretendard",
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              "Sorry, Try Again!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: "Pretendard",
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
