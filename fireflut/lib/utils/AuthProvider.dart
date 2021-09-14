

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

 enum AuthenticationState {
    Authenticated,
    Unauthenticated
  }

class AuthProvider with ChangeNotifier {

  AuthProvider() {
    init();
  }
  AuthenticationState _authState = AuthenticationState.Unauthenticated;
  AuthenticationState get  getState => _authState;
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> init() async{
    await 
    _auth.authStateChanges().listen((user) {
      if(user == null) {
        // simply means the user is logged out
        _authState = AuthenticationState.Unauthenticated;
      }else {
        _authState = AuthenticationState.Authenticated;
      }
      notifyListeners();
    });
  }

  
}