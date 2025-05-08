import 'package:alphamusic/feature/playlist//components/remove_from_playlist_button.dart';
import 'package:alphamusic/shared/components/result_texts.dart';
import 'package:alphamusic/shared/components/play_button.dart';
import 'package:flutter/material.dart';

class ListeningFromPlaylistScreen extends StatelessWidget {
  const ListeningFromPlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/img/sample_music_image.png",
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: 547,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black,
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              children: [
                ResultTexts(
                  title: "8am in Charlotte",
                  artist: "Drake",
                ),
                Spacer(),
                PlayButton(
                  onPlay: () {
                    print("Playing");
                  },
                  onStop: () {
                    print("Stopped");
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: RemoveFromPlaylistButton(
              onAdd: () {},
              onRemove: () {},
            ),
          ),
        ],
      ),
    );
  }
}
