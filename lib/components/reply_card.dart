import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:vendors_finder/styles/colors.dart';
import 'package:vendors_finder/styles/texts.dart';

class ReplyCard extends StatelessWidget {
  final Map profile;
  ReplyCard({this.profile});

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: new Card(
        elevation: 5,
        child:new ListTile(
        
        leading:   CircleAvatar(
            backgroundImage: NetworkImage(profile['image']),  
          ),
          title: new Row(
            children: <Widget>[
              new Text('to: ',
              style: textStyles['h4'],
              ),
              new Text(profile['title'],
              style: textStyles['h6alt'],
              ),
            ],
          ),
          subtitle: new Text(profile['date'],
              style: textStyles['h4'],
              ),
          trailing: new Text(profile['count'],
              style: textStyles['buttonLinkTextStyles'],
              ),
        ),
      )
    );
  }
}
