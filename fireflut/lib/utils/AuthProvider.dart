
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

 enum AuthenticationState {
    Authenticated,
    Unauthenticated
  }

class AuthProvider with ChangeNotifier {

  AuthProvider() {
    init();
  }
  String loginErrorMessage = '';
  String signupErrorMessage = '';
  AuthenticationState _authState = AuthenticationState.Unauthenticated;
  AuthenticationState get  getState => _authState;
  bool signingIn = false;
  FirebaseAuth _auth = FirebaseAuth.instance;

  void init() {
    _auth.authStateChanges().listen((user) {
      if(user == null) {
        // simply means the user is logged out
        _authState = AuthenticationState.Unauthenticated;
      }else {
        print('Authenticated yo');
        _authState = AuthenticationState.Authenticated;
      }
      notifyListeners();
    });
  }

   Future<void> createAccount(String email, String password) async{

     _auth.createUserWithEmailAndPassword(email: email, password: password)
    .then((value){
      _authState = AuthenticationState.Authenticated;
    })
    .catchError((onError) {
      print(onError);
      signupErrorMessage = onError;
    });
    
  }

  Future<void> login(String email, String password)  async {
    signingIn = true;
    notifyListeners();
    await _auth.signInWithEmailAndPassword(email: email, password: password)
    .then((value)  {
      signingIn = false;
    })
    .catchError((onError) {
      signingIn = false;
      loginErrorMessage = onError;
    });
    notifyListeners();
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  
}