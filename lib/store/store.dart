import 'package:redux/redux.dart';

import 'package:vendors_finder/reducers/app_reducer.dart';
import 'package:vendors_finder/models/app_state.dart';
import 'package:vendors_finder/middleware/middleware.dart';

Store<AppState> createStore() { 
    Store<AppState> store = new Store(
        appReducer,
        initialState: new AppState(),
        middleware: createMiddleware(),
    );
    persistor.load(store);
    // persistor.start(store);

    return store;
}