import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CancelButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 83,
      height: 27,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
          backgroundColor: Color.fromRGBO(217, 217, 217, 0.5),
          padding: EdgeInsets.zero,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconTheme(
              data: IconThemeData(
                weight: 1500,
                size: 14,
              ),
              child: Icon(
                Icons.close,
                color: Color.fromARGB(255, 19, 11, 26),
              ),
            ),
            SizedBox(width: 2),
            Text(
              "cancel",
              style: TextStyle(
                color: Color.fromARGB(255, 19, 11, 26),
                fontSize: 14,
                fontFamily: "Pretendard",
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
