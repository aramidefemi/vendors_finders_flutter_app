import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import 'package:vendors_finder/models/user.dart';
import 'package:vendors_finder/models/app_state.dart';
import 'package:vendors_finder/http.dart';

class UserLoginSuccess {
  final User user;

  UserLoginSuccess(this.user);
}

class UserLoginFailure {
  final String error;

  UserLoginFailure(this.error);
}

class DefineUserProfile {
  final User user;
  
  DefineUserProfile(this.user);
}

class UserLogout {}

final Function login = (BuildContext context, String email, String password) {
  return (Store<AppState> store)  async {
    Map data = {
      "email": email,
      "password": password,
    };
    var res = await postHttp('/login', data: data);
 
    if (res['status'] == 'success') {
      var _token = res['data']['token'];
      var _profile = {};
     store.dispatch(new UserLoginSuccess(new User(_token, _profile)));
      Navigator.of(context).pushNamedAndRemoveUntil('/main', (_) => false);
    } else {
      store.dispatch(
          new UserLoginFailure('Username or password were incorrect.'));
    }
  };
};

final Function getUser  = () {
  return (Store<AppState> store)  async { 
    String _token = store.state.auth.user.token;
    var res = await getHttp('/user?', token: _token);
    if (res['status'] == 'success') {
      var _profile = res['data']['user'];
      store.dispatch(new DefineUserProfile(new User(_token, _profile)));
    }
  };
};

final Function register =
    ({BuildContext context, String email, String password, String account})  {
  return (Store<AppState> store) async {
    Map data = {
      "firstname": "-",
      "lastname": "-",
      "username": "-",
      "email": email,
      "isAdmin": 1,
      "password": password,
      "password_confirmation": password,
      "role": account
    };
    var res = await postHttp('/register', data: data);
    if (res['status'] == 'success') {
      var _token = res['data']['token'];
      var _profile = res['data']['user'];
      store.dispatch(new UserLoginSuccess(new User(_token, _profile)));
      Navigator.of(context).pushNamedAndRemoveUntil('/main', (_) => false);
    } else {
      store.dispatch(
          new UserLoginFailure('Something went wrong! please try again!'));
    }
  };
};

final Function logout = (BuildContext context) {
  return (Store<AppState> store) {
    store.dispatch(new UserLogout());
    Navigator.of(context).pushNamedAndRemoveUntil('/login', (_) => false);
  };
};
