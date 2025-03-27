import 'package:alphamusic/feature/fail/components/fail_texts.dart';
import 'package:alphamusic/shared/components/cancel_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FailScreen extends StatelessWidget {
  const FailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 60),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 27,
                ),
              ),
              CancelButton(),
              SizedBox(width: 20),
            ],
          ),
          FailTexts(),
          SizedBox(height: 150),
          Image.asset("assets/img/fail_emoji.png"),
        ],
      ),
    );
  }
}
