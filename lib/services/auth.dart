import 'package:firebase_auth/firebase_auth.dart';
import 'package:resumeapp/models/user.dart';


class AuthService {

  final FirebaseAuth _auth =FirebaseAuth.instance;

  //create user object based on firebase user
  User _userFromFirebaseUser(FirebaseUser user){

    return user != null? User(uid: user.uid) : null;
  }

  //auth change user stream

  Stream<User> get user{
    return _auth.onAuthStateChanged
        //.map((FirebaseUser user) =>_userFromFirebaseUser(user));
        .map(_userFromFirebaseUser);
  }

  //sign in anonymously
  Future signInAnon()async {
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    }catch(e) {
      print(e.toString());
      return null;
    }
  }

  //login  with email & password
  Future signInwithEmail(String email, String password) async{
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser userr = result.user;
      return _userFromFirebaseUser(userr);
    }catch(e){
      print(e.toString());
      return null;
    }

  }
  //sign up with email & password

  Future registerwithEmail(String email, String password) async{
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser userr = result.user;
      return _userFromFirebaseUser(userr);
    }catch(e){
      print(e.toString());
      return null;
    }

  }

  //sign out
  Future signOut() async {
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }


}