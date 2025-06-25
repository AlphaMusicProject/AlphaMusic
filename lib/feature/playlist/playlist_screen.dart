import 'package:alphamusic/feature/listening/ui/listening_screen.dart';
import 'package:alphamusic/feature/playlist/components/music_list_item.dart';
import 'package:alphamusic/feature/playlist/components/playlist_button.dart';
import 'package:alphamusic/feature/playlist/components/playlist_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlaylistScreen extends StatefulWidget {
  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  late DraggableScrollableController _sheetController;

  bool playListButton = false;

  @override
  void initState() {
    super.initState();
    _sheetController = DraggableScrollableController();
  }

  void _handleDrag(DragUpdateDetails details) {
    final delta = details.primaryDelta ?? 0;
    final screenHeight = MediaQuery.of(context).size.height;
    final newSize = _sheetController.size! - delta / screenHeight;

    if (newSize >= 0.25 && newSize <= 0.75) {
      _sheetController.jumpTo(newSize);
    }
  }

  void changePlaylist() {
    setState(() {
      playListButton = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
              child: Padding(
                  padding: EdgeInsets.all(34),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/img/profile_emoji.png",
                            width: 103,
                            height: 103,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "GoodMorning!",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(
                                      0xffA2A2A3,
                                    )),
                              ),
                              Text(
                                "I AM ALPHA",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                      Text(
                        "Music Discovery, Own Playlist & Song Info",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        "What song are you",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "looking for?",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Center(
                          child: Column(
                        children: [
                          CupertinoButton(
                              child: Image.asset(
                                "assets/img/home_emoji.png",
                                width: 244,
                                height: 244,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ListeningScreen(),
                                  ),
                                );
                              }),
                          Text(
                            "Tab to Alpha",
                            style: TextStyle(
                                color: Color(0xff67676B),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                    ],
                  ))),
          DraggableScrollableSheet(
            controller: _sheetController,
            initialChildSize: 0.27,
            minChildSize: 0.27,
            maxChildSize: 0.7,
            builder: (context, scrollController) {
              return GestureDetector(
                onVerticalDragUpdate: _handleDrag,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffCDCDCE),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 20),
                        child: Column(
                          children: [
                            Container(
                              width: 77,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Color(0xff717B85),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 32),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  playListButton == false
                                      ? Text(
                                          "My music",
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      : Row(
                                          children: [
                                            Image.asset(
                                                "assets/img/my_music.png"),
                                            SizedBox(width: 7),
                                            Text(
                                              "playlist",
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                  playListButton == false
                                      ? Text(
                                          "20+ songs",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff717B85),
                                          ),
                                        )
                                      : Text(
                                          "12+ songs",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff717B85),
                                          ),
                                        ),
                                  SizedBox(height: 20),
                                  playListButton == false
                                      ? PlaylistButton(
                                          playlistChange: changePlaylist,
                                        )
                                      : Container(),
                                  SizedBox(height: 20),
                                  playListButton == false
                                      ? Text(
                                          "Resent",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        )
                                      : Container()
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          controller: scrollController,
                          padding: EdgeInsets.symmetric(horizontal: 32),
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: playListButton == false
                                  ? Row(
                                      children: [
                                        Expanded(child: MusicListItem()),
                                        SizedBox(width: 12),
                                        Expanded(child: SizedBox()),
                                      ],
                                    )
                                  : SizedBox(
                                      height: 86,
                                      child: PlaylistListItem(),
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
