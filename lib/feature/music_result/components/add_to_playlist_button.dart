import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddToPlaylistButton extends StatefulWidget {
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const AddToPlaylistButton(
      {super.key, required this.onAdd, required this.onRemove});

  @override
  State<AddToPlaylistButton> createState() => _AddToPlaylistButtonState();
}

class _AddToPlaylistButtonState extends State<AddToPlaylistButton> {
  bool _isAdd = false;

  void _togglePlay() {
    setState(() {
      _isAdd = !_isAdd;
    });

    if (_isAdd) {
      widget.onAdd();
    } else {
      widget.onRemove();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _isAdd ? 198 : 186,
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
                  _isAdd
                      ? CupertinoIcons.doc_checkmark_fill
                      : CupertinoIcons.music_note_list,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  _isAdd ? "Added to Playlist" : "Add to Playlist",
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
