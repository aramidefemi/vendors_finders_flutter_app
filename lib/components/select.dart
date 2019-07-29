import 'package:flutter/material.dart';
import 'package:vendors_finder/styles/input.dart';

Widget  CustomSelect ({List<String> options, action, label, hint }) => FormField<String>(
          builder: (FormFieldState<String> state) {
            return InputDecorator(
              decoration: inputStyle(label, hint), 
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(          
                 isDense: true,
                  onChanged: action,
                  items: options.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            );
          },
        );