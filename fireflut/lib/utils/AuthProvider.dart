
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

 enum AuthenticationState {
    Authenticated,
    Unauthenticated,
    VerifyingAuthState
  }

class AuthProvider with ChangeNotifier {

  AuthProvider() {
    init();
  }
  String loginErrorMessage = '';
  String signupErrorMessage = '';
  AuthenticationState _authState = AuthenticationState.VerifyingAuthState;
  AuthenticationState get  getState => _authState;
  bool signingIn = false;
  bool creatingAccount = false;
  FirebaseAuth _auth = FirebaseAuth.instance;

  void init() async {
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

   Future<void> createAccount(String email, String password) async{
     creatingAccount = true;
     notifyListeners();
     await _auth.createUserWithEmailAndPassword(email: email, password: password)
    .then((value){
      _authState = AuthenticationState.Authenticated;
      creatingAccount = false;
      signupErrorMessage = "";
    })
    .catchError((onError) {
      creatingAccount = false;
      switch(onError.code) {
        case "network-request-failed":
          signupErrorMessage = 'Network error, check you connection.';
          break;
        case "email-already-in-use":
          signupErrorMessage = "Username is taken.";
          break;
        case "wrong-password":
          signupErrorMessage = "Password is incorrect";
          break;
        default:
          break;
      }
    });
    notifyListeners();
  }

  Future<void> login(String email, String password)  async {
    signingIn = true;
    loginErrorMessage = "";
    notifyListeners();
    await _auth.signInWithEmailAndPassword(email: email, password: password)
    .then((value)  {
      signingIn = false;
      loginErrorMessage = "";
    })
    .catchError((onError) {
      signingIn = false;
      switch(onError.code) {
        case "network-request-failed":
          loginErrorMessage = 'Network error, check you connection.';
          break;
        case "no-user-found":
          loginErrorMessage = "Account does not exist.";
          break;
        case "wrong-password":
          loginErrorMessage = "Password is incorrect";
          break;
        default:
          break;
      }
    });
    notifyListeners();
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  
}