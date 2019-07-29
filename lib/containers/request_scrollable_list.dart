import 'package:flutter/material.dart';
import 'package:vendors_finder/components/request_card.dart';
import 'package:vendors_finder/styles/texts.dart';

Widget requestScrollableList({List<Map> items, section}) => new Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20.0),
      child: new Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text(
                section,
                style: textStyles['small'],
              ),
              new Text(
                'see all',
                style: textStyles['buttonLinkTextStyles'],
              ),
            ],
          ),
           new SizedBox(
                height: 200,
                child:
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return RequestCard(
                profile: items[index],
              );
            },
            itemCount: items.length,
          )
           ),
        ],
      ),
    );
