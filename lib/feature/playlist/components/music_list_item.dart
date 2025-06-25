import 'package:alphamusic/feature/playlist/ui/listening_screen_from_playlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicListItem extends StatelessWidget {
  const MusicListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ListeningFromPlaylistScreen(),
          ),
        );
      },
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 180,
        clipBehavior: Clip.hardEdge,
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
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                "assets/img/sample_music_image.png",
                fit: BoxFit.fitWidth,
                width: double.infinity,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 65,
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "8am in Charlotte",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Drake",
                    style: TextStyle(fontSize: 12, color: Color(0xff717B85)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
