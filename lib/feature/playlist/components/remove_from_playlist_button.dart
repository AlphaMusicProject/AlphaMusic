import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RemoveFromPlaylistButton extends StatefulWidget {
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const RemoveFromPlaylistButton(
      {super.key, required this.onAdd, required this.onRemove});

  @override
  State<RemoveFromPlaylistButton> createState() => _RemoveFromPlaylistButtonState();
}

class _RemoveFromPlaylistButtonState extends State<RemoveFromPlaylistButton> {
  bool _isAdded = true; // 기본적으로 항목이 추가된 상태

  void _togglePlay() {
    setState(() {
      _isAdded = !_isAdded;
    });

    if (_isAdded) {
      widget.onAdd();
    } else {
      widget.onRemove();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _isAdded ? 198 : 186,
      height: 49,
      child: ElevatedButton(
        onPressed: _togglePlay,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: Color.fromARGB(255, 42, 42, 44),
          padding: EdgeInsets.zero,
        ),
        child: AnimatedSwitcher(
            duration: Duration(milliseconds: 150),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  _isAdded
                      ? CupertinoIcons.trash
                      : CupertinoIcons.music_note_list,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  _isAdded ? "Remove from Playlist" : "Add to Playlist",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Pretendard",
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
