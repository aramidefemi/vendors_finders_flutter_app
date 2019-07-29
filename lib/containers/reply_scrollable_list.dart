import 'package:flutter/material.dart';
import 'package:vendors_finder/components/reply_card.dart';
import 'package:vendors_finder/styles/texts.dart';

Widget replyScrollableList({List<Map> items, section}) => new Padding(
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
                // height: 200,
                child:
         Column(
            // scrollDirection: Axis.vertical,
            children: itemsList(items),
         
          )
           ),
        ],
      ),
    );

List <Widget> itemsList (List items) {
  return items.map((item){
      return ReplyCard(
                profile: item,
              );
  }).toList();
}