import 'package:flutter/material.dart';
import 'package:vendors_finder/components/user_card.dart';

List<Map> colors = [
  {'card': 'ligth_font', 'text': 'grey', 'elevation': 0.0},
  {'card': 'primary_dark', 'text': 'white', 'elevation': 12.0 },
  {'card': 'ligth_font', 'text': 'grey', 'elevation': 0.0}
];

Widget usersScrollableList(List items) => new Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return CustomUserCard(
              color: colors[index],
              text: items[index]['name'],
              image: FlutterLogo());
        },
        itemCount: items.length,
      ),
    );
