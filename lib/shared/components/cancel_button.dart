import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 83, // 크기 유지
      height: 27, // 크기 유지
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
          backgroundColor: Color.fromARGB(128, 217, 217, 217),
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
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
