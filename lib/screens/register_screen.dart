import 'package:flutter/material.dart';

import 'package:vendors_finder/containers/register_form.dart';
import 'package:vendors_finder/containers/users_scrollable_list.dart';
import 'package:vendors_finder/styles/texts.dart';
import 'package:vendors_finder/components/button.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key key}) : super(key: key);
  List userProfiles = [
    
    {"name": "John \n Doe"},
    {"name": "Franz \n Ferdinand"},
    {"name": "Ola \n Olufemi"},
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Padding(
          padding: new EdgeInsets.fromLTRB(
              32.0, MediaQuery.of(context).padding.top + 32.0, 32.0, 32.0),
          child: new ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Container(
                 margin: EdgeInsets.only( top: 20.0),
                child: new Text(
                  'Vendors Finder',
                    style: textStyles['h1'],
                    textAlign: TextAlign.center,
                ),
              ),
              new Container(
                height: 180, 
                child: usersScrollableList(userProfiles),
              ),
                            new Container(
                child: new Text(
                  'Sign Up',
                    style: textStyles['small'],
                    textAlign: TextAlign.center,
                ),
              ),
              new RegisterForm(),
                                          new Container(
                                            margin: EdgeInsets.only( top: 5.0),
                child: new Row(
                crossAxisAlignment:  CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                     new Text(
                  'Already have an account?',
                    style: textStyles['small'], 
                ),
                CustomButtonLink(
                  text: 'Login',
                  action: () => Navigator.of(context).pushNamed('/login'),
                ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
