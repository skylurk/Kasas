import 'package:firebase_auth/firebase_auth.dart';
import 'package:kasas_app/models/user.dart';
import 'package:kasas_app/services/database.dart';
class AuthService{

  //instance of firebase authentication
  //object allows us to communicate with firebase backend
  //final keyword means it doesnt change in the future

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based on firebase user 
  
  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid: user.uid) : null;
  }

  //change user stream


  Stream<User> get user{
    return _auth.onAuthStateChanged
       // .map((FirebaseUser user) => _userFromFirebaseUser(user));
    .map(_userFromFirebaseUser);//same as above commented line

  }

  //anonymous sign in
  //get user that is signed in
  Future signInAnon() async{
    try {
      AuthResult result  = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e){
      print(e.toString());
      return null;
    }
  }


  //sign in with email and password
Future signInWithEmailAndPassword(String email, String password) async{
  try{
    AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    FirebaseUser user = result.user;
    return _userFromFirebaseUser(user);
  }catch(e){
    print(e.toString());
    return null;
  }
}

  //register with email and password
Future registerWithEmailAndPassword(String email, String password) async{
  try{
    AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    FirebaseUser user = result.user;

    //create a new document collection for the user with the uid
    await DatabaseService(uid: user.uid).updateUserData('FirstName', 'secondName', 'department', 'position');
    return _userFromFirebaseUser(user);
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