import 'package:chat/modal/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chat/modal/user.dart';
class AuthMethod{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User_Firebase _userFromfirebaseUser(User user){
    return user!=null? User_Firebase(UserId: user.uid):null;
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email,password: password);
      User user = result.user;
      return _userFromfirebaseUser(user);
    } catch(e){
        print(e.toString());
    }
  }

  Future signUpWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      _userFromfirebaseUser(user);
    } catch(e){
      print(e.toString());
    }
  }

  Future resetPassword(String email) async {
    try{
      return await _auth.sendPasswordResetEmail(email: email);
    }catch(e){
      print(e.toString());
    }
  }

  Future signOut() async {
    return await _auth.signOut();
  }
}