import 'package:flutter/material.dart';
import 'package:vendors_finder/styles/colors.dart';
import 'package:vendors_finder/styles/texts.dart';

String userAvatarUrl =
    "https://images.unsplash.com/photo-1524593689594-aae2f26b75ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80";
Widget CustomUserCard({color, text, image}) {
  return new Padding(
    padding: EdgeInsets.symmetric(
      vertical: 10.0,
    ),
    child: new Card(
      elevation: color['elevation'],
      color: colorStyles[color['card']],
      child: new Container(
        width: 150.0,
        padding: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(userAvatarUrl),
                )),
            new Text(
              '$text',
              textAlign: TextAlign.center,
              style: new TextStyle(fontSize: 14.0, color: colorStyles[color['text']]),
            ),
          ],
        ),
      ),
    ),
  );
}
