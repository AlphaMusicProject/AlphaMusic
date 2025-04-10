import 'package:alphamusic/shared/model/music_result_model.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

MusicResultModel? currentSong;

Future<void> recognizeSong(Function onUpdate) async {
  const platform = MethodChannel('shazamkit_channel');

  try {
    final result = await platform.invokeMethod('startRecognition');
    final data = jsonDecode(result);
    currentSong = MusicResultModel.fromJson(data);

    print("title: ${currentSong?.title ?? "노노"}/n");
    print("artist: ${currentSong?.artist ?? "노노"}/n");
    print("artworkUrl: ${currentSong?.artworkUrl ?? "노노"}/n");

    onUpdate();
  } catch (e) {
    print("인식 실패: $e");
    currentSong = null;
    onUpdate();
  }
}
