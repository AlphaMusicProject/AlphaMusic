import 'package:flutter/material.dart';

class ListeningWave extends StatefulWidget {
  const ListeningWave({super.key});

  @override
  _ListeningWaveState createState() => _ListeningWaveState();
}

class _ListeningWaveState extends State<ListeningWave> {
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _toggleVisibility();
  }

  void _toggleVisibility() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _isVisible = !_isVisible;
      });
      _toggleVisibility();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -50,
          left: -50,
          right: -50,
          child: AnimatedOpacity(
            opacity: _isVisible ? 1.0 : 0.0,
            duration: Duration(seconds: 1),
            child: Container(
              width: 440,
              height: 440,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 94, 94, 97),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
        AnimatedOpacity(
          opacity: _isVisible ? 1.0 : 0.0,
          duration: Duration(seconds: 1),
          child: Container(
            width: 354,
            height: 354,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 162, 162, 163),
              shape: BoxShape.circle,
            ),
          ),
        ),
        AnimatedOpacity(
          opacity: _isVisible ? 1.0 : 0.0,
          duration: Duration(seconds: 1),
          child: Container(
            width: 254,
            height: 254,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 216, 216, 217),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Image.asset("assets/img/listening_emoji.png")
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(home: Scaffold(body: ListeningWave())));
}
