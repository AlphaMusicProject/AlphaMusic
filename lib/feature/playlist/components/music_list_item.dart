import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          ]),
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              height: 65,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Is This love",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "XG",
                      style: TextStyle(fontSize: 12, color: Color(0xff717B85)),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
