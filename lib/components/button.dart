import 'package:flutter/material.dart';
import 'package:vendors_finder/styles/colors.dart';
import 'package:vendors_finder/styles/texts.dart';

Widget CustomButton (text,action) => new Padding(
      padding: new EdgeInsets.only(top: 5.0),
      child: new RaisedButton(
        onPressed: action,
        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
        color: colorStyles['primary_dark'],
        padding: EdgeInsets.symmetric(vertical: 15),
        child: new Text(
          '$text',
           style: textStyles['buttonTextStyles'],
        ),
      ),
    );

Widget CustomButtonLink ({text,action}) => new FlatButton(
        onPressed:  action, 
        // textColor: colorStyles['primary_dark'], 
        
        child: new Container(
          padding: EdgeInsets.all(0),
          child: new Text(
          '$text',
           style: textStyles['buttonLinkTextStyles'],
        ),
        ),
     
    );