import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:vendors_finder/styles/colors.dart';
import 'package:vendors_finder/styles/texts.dart';

class RequestCard extends StatefulWidget {
  final Map profile;
  RequestCard({this.profile});

  @override
  _RequestCardState createState() => new _RequestCardState(profile: profile);
}

class _RequestCardState extends State<RequestCard> {
  final Map profile;
  String _color;
  String pre;
  _RequestCardState({this.profile});

  void initState() {
    super.initState();
    pre = '';
    _color = this.profile['count'] == true ? 'primary_dark' : 'grey';
  }

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: new GestureDetector(
        onTapDown: (res) {
          
          setState(() {
            pre = 'alt';
            _color = 'grey';
          });
        },
        onTapUp: (res) {
           
          setState(() {
            pre = '';
            _color = 'primary_dark';
          });
        },
        child: new Card(
          elevation: _color == 'grey' ? 0 : 10,
          color: colorStyles[_color],
          child: new Container(
            width: 250.0,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        pill('REQUEST DETAILS', profile['title']),
                        pill('LOCATION', profile['location']),
                        pill('CATEGORIES', '${profile['categories']}'),
                      ],
                    ),
                    new Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,

                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(profile['image']),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 5),
                child: new Text(
                  profile['description'],
                  style: textStyles['h6$pre'],
                  
                  textAlign: TextAlign.left,
                ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget pill(key, value) => new Column(
    crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            key,
            style: textStyles['h4'],
          ),
          new Text(
            '$value',
            style: textStyles['h5$pre'],
          ),
        ],
      );
}
