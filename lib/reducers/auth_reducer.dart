import 'package:redux/redux.dart';

import 'package:vendors_finder/actions/auth_actions.dart';
import 'package:vendors_finder/models/auth_state.dart';

Reducer<AuthState> authReducer = combineReducers([ 
    new TypedReducer<AuthState, UserLoginSuccess>(userLoginSuccessReducer),
    new TypedReducer<AuthState, UserLoginFailure>(userLoginFailureReducer),
    new TypedReducer<AuthState, UserLogout>(userLogoutReducer),
    new TypedReducer<AuthState, DefineUserProfile>(defineUserProfileReducer),
]);

 

AuthState userLoginSuccessReducer(AuthState auth, UserLoginSuccess action) {
    return auth.copyWith(
        isAuthenticated: true,
        isAuthenticating: false,
        user: action.user
    );
}

AuthState userLoginFailureReducer(AuthState auth, UserLoginFailure action) {
    return auth.copyWith(
        isAuthenticated: false,
        isAuthenticating: false,
        error: action.error
    );
}

AuthState userLogoutReducer(AuthState auth, UserLogout action) {
    return new AuthState();
}

AuthState defineUserProfileReducer(AuthState auth, DefineUserProfile action) {
    return auth.copyWith(
        user: action.user
    );
}