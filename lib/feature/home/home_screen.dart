import 'package:alphamusic/feature/fail/ui/fail_screen.dart';
import 'package:alphamusic/feature/listening/ui/listening_screen.dart';
import 'package:alphamusic/feature/music_result/ui/music_result_screen.dart';
import 'package:alphamusic/feature/playlist/ui/listening_screen_from_playlist.dart';
import 'package:alphamusic/shared/components/cancel_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListeningFromPlaylistScreen(),
      ),
    );
  }
}
