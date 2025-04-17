import 'package:flutter/material.dart';

class PlayButton extends StatefulWidget {
  final VoidCallback onPlay;
  final VoidCallback onStop;

  const PlayButton({super.key, required this.onPlay, required this.onStop});

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  bool _isPlaying = false;

  void _togglePlay() {
    setState(() {
      _isPlaying = !_isPlaying;
    });

    if (_isPlaying) {
      widget.onPlay();
    } else {
      widget.onStop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 57,
      height: 57,
      child: ElevatedButton(
        onPressed: _togglePlay,
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: Colors.white,
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
          child: Image.asset(
            _isPlaying
                ? "assets/img/stop_button.png"
                : "assets/img/play_button.png",
            key: ValueKey<bool>(_isPlaying),
          ),
        ),
      ),
    );
  }
}
