import 'package:flutter/material.dart';
import 'package:kasas_app/handovers/handover_home.dart';
import 'package:kasas_app/services/auth.dart';




class LandingPage extends StatefulWidget {

  

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  final AuthService _auth = AuthService();
  
  @override
  Widget build(BuildContext context) {
return Scaffold(

      appBar: AppBar(
        title: Text("FlyKASAS"),

            actions: <Widget>[FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Logout'),
            onPressed: () async{
              await _auth.signOut();

            },
          )],
      ),

      backgroundColor: Colors.white,
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
                    'Main Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),

            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              leading: Icon(Icons.flight),
              title: Text(
                'FLIGHTS',
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),

            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              leading: Icon(Icons.local_hospital),
              title: Text(
                'SAFETY',
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),

            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              leading: Icon(Icons.business_center),
              title: Text(
                'HANDOVERS',
              ),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => HandoverLanding()));
              },
            ),

            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              leading: Icon(Icons.view_list),
              title: Text(
                'CHECKLISTS',
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),

            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              leading: Icon(Icons.school),
              title: Text(
                'TRAINING FORMS',
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),

            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              leading: Icon(Icons.settings),
              title: Text(
                'MAINTENANCE',
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),

            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              leading: Icon(Icons.person),

              title: Text(
                'MANAGE PROFILE',
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),

      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Center(
                  child: Image.asset('assets/images/logo.jpg'),
                ),
              ),flex: 2,
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 300.0,
                      height: 50.0,
                      color: Colors.blueAccent,
                      elevation: 20,
                      shape: RoundedRectangleBorder(side: BorderSide(
                        color: Colors.blue,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        'Safety Reports',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: (){

                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    MaterialButton(
                      minWidth: 300.0,
                      height: 50.0,
                      color: Colors.blueAccent,
                      elevation: 20,
                      shape: RoundedRectangleBorder(side: BorderSide(
                        color: Colors.blue,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        'Notifications',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: (){

                      },
                    ),
                  ],

                ),
              ),flex: 5,
            )
          ],
        ),

      ),
    );
  }
}