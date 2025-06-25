import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaylistListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 86,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.red),
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "IS THIS LOVE",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "XG",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Text("Mar 17, 2025 at 17:59", style: TextStyle(color: Color(0xff717B85)),)
          ],
        )
      ],
    );
  }
}
