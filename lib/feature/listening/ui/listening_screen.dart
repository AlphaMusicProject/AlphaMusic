import 'dart:async';
import 'package:alphamusic/feature/music_result/ui/music_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:alphamusic/feature/listening/components/listening_texts.dart';
import 'package:alphamusic/feature/listening/components/listening_wave.dart';
import 'package:alphamusic/shared/components/cancel_button.dart';

class ListeningScreen extends StatefulWidget {
  const ListeningScreen({super.key});

  @override
  State<ListeningScreen> createState() => _ListeningScreenState();
}

class _ListeningScreenState extends State<ListeningScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) {
        Navigator.of(context)
          ..pop()
          ..push(MaterialPageRoute(builder: (_) => const MusicResultScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 60),
          Row(
            children: [
              const Expanded(child: SizedBox(height: 27)),
              CancelButton(onPressed: () {
                Navigator.of(context).pop();
              }),
              const SizedBox(width: 20),
            ],
          ),
          const ListeningTexts(),
          const SizedBox(height: 100),
          const ListeningWave(),
        ],
      ),
    );
  }
}
