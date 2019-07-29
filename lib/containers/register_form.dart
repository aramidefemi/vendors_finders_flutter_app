import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'package:vendors_finder/presentation/platform_adaptive.dart';
import 'package:vendors_finder/models/app_state.dart';
import 'package:vendors_finder/actions/auth_actions.dart';
import 'package:vendors_finder/components/input.dart';
import 'package:vendors_finder/components/button.dart';
import 'package:vendors_finder/components/select.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => new _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final formKey = new GlobalKey<FormState>();

  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  TextEditingController _account = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, dynamic>(
        converter: (Store<AppState> store) {
      return (BuildContext context) =>
          store.dispatch(register(
            email: _email.text,
            account: _account.text,
            context: context,
            password: _password.text,
          ));
    }, builder: (BuildContext context, registerAction) {
      return new Form(
        key: formKey,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomInput('Email', 'example@gmail.com', _email),
            CustomInput('Password', 'password', _password),
            CustomInput('Account', 'Customer / Vendor', _account),
            CustomButton('Sign up', () => registerAction(context))
          ],
        ),
      );
    });
  }
}
