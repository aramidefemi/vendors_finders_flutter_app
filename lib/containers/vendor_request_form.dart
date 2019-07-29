import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'package:vendors_finder/models/app_state.dart';
import 'package:vendors_finder/http.dart';
import 'package:vendors_finder/components/input.dart';
import 'package:vendors_finder/components/button.dart';

class VendorRequestForm extends StatefulWidget {
  @override
  _VendorRequestFormState createState() => new _VendorRequestFormState();
}

class _VendorRequestFormState extends State<VendorRequestForm> {
  final formKey = new GlobalKey<FormState>();

  TextEditingController _title = new TextEditingController();
  TextEditingController _cate = new TextEditingController();
  TextEditingController _subcate = new TextEditingController();
  TextEditingController _location = new TextEditingController();
  TextEditingController _desc = new TextEditingController();
  TextEditingController _image = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, dynamic>(
        converter: (Store<AppState> store) {
      return (BuildContext context) async {
        Map params = {
          "categories": _cate.text,
          "tags": _subcate.text,
          "description": _desc.text,
          "title":  _title.text,
          "location": _location.text
        };
        String token =  store.state.auth.user.token;
        postHttp('/request',params: params,token: token);
        Navigator.of(context).pushNamedAndRemoveUntil('/main', (_) => false);
      };
    }, builder: (BuildContext context, takeAction) {
      return new Form(
        key: formKey,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomInput('title', 'example@gmail.com', _title),
            CustomInput('categories', 'house, plumber', _cate),
            CustomInput('sub categories', 'Customer / Vendor', _subcate),
            CustomInput('location', 'lekki ikeja', _password),
            CustomInput(
              'description',
              'Need the assistance of  a plumber to fix a leaking pip in the kitchen.',
              _desc,
            ),
            CustomInput('image', 'click to upload', _image, suffix: 'upload'),
            CustomButton('Create Request', () => takeAction(context))
          ],
        ),
      );
    });
  }
}
