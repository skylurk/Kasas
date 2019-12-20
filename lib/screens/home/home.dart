import 'package:flutter/material.dart';
import 'package:kasas_app/screens/home/landing.dart';
//import 'package:kasas_app/services/auth.dart';
import 'package:kasas_app/services/database.dart';
import 'package:provider/provider.dart';
import 'package:kasas_app/models/details.dart';
//import 'package:kasas_app/screens/home/user_list.dart';

class Home extends StatelessWidget {

  //final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Details>>.value(
          value: DatabaseService().users,
          child: Scaffold(
        backgroundColor: Colors.blueAccent,
        // appBar: AppBar(
        //   title: Text(
        //     'Kasas App'
        //   ),
        //   backgroundColor: Colors.lightBlue,
        //   elevation: 0.0,
        //   actions: <Widget>[FlatButton.icon(
        //     icon: Icon(Icons.person),
        //     label: Text('Logout'),
        //     onPressed: () async{
        //       await _auth.signOut();

        //     },
        //   )],
        // ),

        body: LandingPage(),
      ),
    );
  }
}
  