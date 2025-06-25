
import 'package:alphamusic/feature/fail/ui/fail_screen.dart';
import 'package:alphamusic/feature/home/home_screen.dart';
import 'package:alphamusic/feature/playlist/playlist_screen.dart';
import 'package:alphamusic/shared/controller/music_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  runApp(
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 3, 4, 9),
      ),
      home:PlaylistScreen(),
    ),
  );

}
