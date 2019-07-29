import 'package:flutter/material.dart';
import 'package:vendors_finder/styles/colors.dart';
import 'package:vendors_finder/styles/texts.dart'; 

InputDecoration inputStyle(label, hint, {suffix = null, suffixAction}) =>
    new InputDecoration(
      contentPadding:  new EdgeInsets.all(15),
      hintText: '$hint',
      hintStyle: textStyles['p'],
      labelText: '$label',
      labelStyle: TextStyle(
        color: colorStyles['primary_dark'],
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorStyles['primary_dark'], width: 1.0),
        borderRadius: const BorderRadius.all(
          const Radius.circular(5.0),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorStyles['primary_dark'], width: 1.0),
        borderRadius: const BorderRadius.all(
          const Radius.circular(5.0),
        ),
      ),
       
      suffixText: suffix == null ? suffix : '',
      suffixStyle: textStyles['buttonLinkTextStyles'],
    );
