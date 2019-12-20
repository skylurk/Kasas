import 'package:flutter/material.dart';
import 'package:kasas_app/handovers/handover_home.dart';
import 'package:kasas_app/screens/home/user_list.dart';
import 'package:kasas_app/services/database.dart';
import 'package:provider/provider.dart';
import 'package:kasas_app/models/details.dart';


class TakeoverLanding extends StatefulWidget {
  @override
  _TakeoverLandingState createState() => _TakeoverLandingState();
}

class _TakeoverLandingState extends State<TakeoverLanding> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Details>>.value(
      value: DatabaseService().users,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Takeovers'
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => HandoverLanding()));
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
              },
            ),
            ],
          ),
        ), 
        body: UserList(),

      ),
    
    );
  }
}