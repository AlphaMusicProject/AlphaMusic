import 'package:alphamusic/feature/listening/components/listening_texts.dart';
import 'package:alphamusic/feature/listening/components/listening_wave.dart';
import 'package:alphamusic/shared/components/cancel_button.dart';
import 'package:flutter/material.dart';

class ListeningScreen extends StatelessWidget {
  const ListeningScreen({super.key});

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
              CancelButton(onPressed: () {
                Navigator.of(context).pop();
              }),
              SizedBox(width: 20),
            ],
          ),
          ListeningTexts(),
          SizedBox(height: 100),
          ListeningWave(),
        ],
      ),
    );
  }
}
