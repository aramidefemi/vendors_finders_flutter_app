import 'package:flutter/material.dart';
import 'package:vendors_finder/styles/colors.dart';

Map<String, TextStyle> textStyles = {
  'bottom_label': new TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
  ),
  'buttonTextStyles': new TextStyle(
      fontSize: 15.0, fontWeight: FontWeight.bold, color: colorStyles['white']),
  'buttonLinkTextStyles': new TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
      color: colorStyles['primary_dark']),
  'h1': new TextStyle(
      fontSize: 30.0, fontWeight: FontWeight.w500, color: colorStyles['black']),
  'p': new TextStyle(fontSize: 15.0, color: colorStyles['grey']),
  'h4': new TextStyle(fontSize: 10.0,  fontWeight: FontWeight.w500, color: Colors.black38),
  'h4alt': new TextStyle(fontSize: 10.0,  fontWeight: FontWeight.w500, color: Colors.white),
  'h5': new TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500,  color: colorStyles['white']),
    'h5alt': new TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500,  color: Colors.black),
  'h6': new TextStyle(color: Colors.black45,
                   fontWeight: FontWeight.w400, fontSize: 12 ),
  'h6alt': new TextStyle(color: Colors.black87,
                   fontWeight: FontWeight.w400, fontSize: 12 ),
  'small': new TextStyle(fontSize: 12.0, color: colorStyles['grey']),
};
