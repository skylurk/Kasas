import 'package:flutter/material.dart';
import 'package:kasas_app/handovers/takeover_home.dart';
import 'package:kasas_app/screens/home/user_list.dart';
import 'package:kasas_app/services/database.dart';
import 'package:provider/provider.dart';
import 'package:kasas_app/models/details.dart';
import 'package:kasas_app/handovers/forms/captain_handover.dart';

class HandoverLanding extends StatefulWidget {



  @override
  _HandoverLandingState createState() => _HandoverLandingState();
}

class _HandoverLandingState extends State<HandoverLanding> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Details>>.value(
      value: DatabaseService().users,
      child: Scaffold(

      appBar: AppBar(
        title: Text(
          'Handovers'
          ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage( 
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/kasasswatch.jpg'),
                ),
                color: Colors.blueAccent,
              ),
              child: Container( 
                child: Center( 
                  child: Text(
                    'Handovers',
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 24, 
                      fontWeight: 
                      FontWeight.w300)
                  ),
                ),
              ),
            ),          ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              leading: Icon(Icons.flight),
              title: Text(
                'Handover',
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),

            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              leading: Icon(Icons.toys),
              title: Text(
                'Takeover',
              ),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => TakeoverLanding()));
              },
            ),

          ],
      ),),
      body: UserList(),

      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CaptainHandover()));
          },
          child: Icon(Icons.add),
        ),

    ),
    );
  }
}