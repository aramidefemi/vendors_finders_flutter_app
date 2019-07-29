import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'package:vendors_finder/presentation/platform_adaptive.dart';
import 'package:vendors_finder/models/app_state.dart';
import 'package:vendors_finder/actions/auth_actions.dart';
import 'package:vendors_finder/components/input.dart';
import 'package:vendors_finder/components/button.dart';


class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => new _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = new GlobalKey<FormState>();

  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, dynamic>(
        converter: (Store<AppState> store) {
      return (BuildContext context) =>
          store.dispatch(login(context, _email.text, _password.text));
    }, builder: (BuildContext context, loginAction) {
      return 

          new Form(
            key: formKey,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomInput('Email', 'example@gmail.com', _email),
                CustomInput('Password', 'password', _password), 
                CustomButton('Sign in', () => loginAction(context))
              ],
            ),
          
      );
    });
  }
}
