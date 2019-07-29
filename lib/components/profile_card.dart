import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:vendors_finder/styles/colors.dart';
import 'package:vendors_finder/styles/texts.dart';

class ProfileCard extends StatelessWidget {
  final Map profile;
  ProfileCard({this.profile});

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: new Card(
        elevation: 20,
        color: colorStyles['primary_dark'],
        child: new Container(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        'PROFILE DETAILS',
                        style: textStyles['h4'],
                      ),
                      new Text(
                        profile['name'],
                        style: textStyles['h5'],
                      ),
                      new Text(
                        profile['email'],
                        style: textStyles['h5'],
                      ),
                      new Text(
                        profile['number'],
                        style: textStyles['h5'],
                      ),
                      new Text(
                        profile['state'],
                        style: textStyles['h5'],
                      )
                    ],
                  ),
                  // Align(
                  //   alignment: Alignment(50,10),
                  //   child: new FlatButton(
                  //   onPressed: () => print('more options'),
                  //   child: Icon(
                  //     Icons.more_horiz,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  // ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: new Text(
                  'RATING \n 07/10',
                  style: textStyles['h4alt'],
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
