import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onVerticalDragUpdate: (details) {
          if (details.delta.dy > 0) {
            print('⬇️ 아래로 스크롤');
          } else if (details.delta.dy < 0) {
            print('⬆️ 위로 스크롤');
          }
        },
      ),
    );
  }
}