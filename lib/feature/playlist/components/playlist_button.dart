import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaylistButton extends StatelessWidget{
  final void Function() playlistChange;

  PlaylistButton({required this.playlistChange});
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      onPressed: () {
        playlistChange();
      },
      padding: EdgeInsets.zero,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.10),
              offset: Offset(5, 5),
              blurRadius: 20,
            )
          ],
        ),
        padding: EdgeInsets.fromLTRB(17, 0, 17, 0),
        child: Row(
          children: [
            Image.asset("assets/img/my_music.png"),
            SizedBox(width: 7),
            Text(
              "Your playlist",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Spacer(),
            Text(
              "12+ songs",
              style: TextStyle(
                color: Color(0xff717B85),
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}