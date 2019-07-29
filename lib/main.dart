import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_persist_flutter/redux_persist_flutter.dart';

import 'package:vendors_finder/presentation/platform_adaptive.dart';
import 'package:vendors_finder/screens/loading_screen.dart';
import 'package:vendors_finder/screens/login_screen.dart';
import 'package:vendors_finder/screens/main_screen.dart';
import 'package:vendors_finder/screens/vendor_request.dart';
import 'package:vendors_finder/store/store.dart';
import 'package:vendors_finder/middleware/middleware.dart';
import 'package:vendors_finder/models/app_state.dart';
import 'package:vendors_finder/screens/register_screen.dart'; 
import 'package:vendors_finder/screens/vendor_request.dart';

void main() => runApp(new ReduxApp());

class ReduxApp extends StatelessWidget {
    final store = createStore();

    ReduxApp();

 

    @override
    Widget build(BuildContext context) {
        return new PersistorGate(
            persistor: persistor,
            loading: new LoadingScreen(),
            builder: (context) => new StoreProvider<AppState>(
                store: store,
                child: new MaterialApp(
                  debugShowCheckedModeBanner: false,
                    title: 'Vendor Finder',
                    theme: kIOSTheme,
                routes: <String, WidgetBuilder>{
                    '/': (BuildContext context) => new StoreConnector<AppState, dynamic>( 
                        converter: (store) => store.state.auth.isAuthenticated, 
                        builder: (BuildContext context, isAuthenticated) => isAuthenticated ? new MainScreen() : new LoginScreen()
                    ),
                    '/login': (BuildContext context) => new LoginScreen(),
                    '/main': (BuildContext context) => new MainScreen(),
                    '/register': (BuildContext context) => new RegisterScreen(),
                    '/create-vendor-request': (BuildContext context) => new VendorRequest(),
                }
                )
            ),
        );
    }

}