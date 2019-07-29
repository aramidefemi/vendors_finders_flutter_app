import 'package:flutter/material.dart';
import 'package:vendors_finder/styles/input.dart';




Widget CustomInput(label, hint, TextEditingController controller, {suffix, suffixAction} ) {
  return new Padding(
    padding: EdgeInsets.symmetric(
      vertical: 10.0,
    ),
    child: new TextFormField(
      obscureText: label == 'Password' ? true : false,
      decoration: inputStyle(label, hint, suffix: suffix,suffixAction: suffixAction),
      validator: (val) => val.isEmpty ? 'Please enter your $label' : null,
      controller: controller,
      

      // minLines: 5,
      // maxLines: 10,
      // expands: true,
    ),
  );
}
