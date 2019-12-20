import 'package:flutter/material.dart';
import 'package:kasas_app/models/details.dart';

class UserTile extends StatelessWidget {

  final Details details; 
  UserTile({ this.details }); 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(10.0, 6.0, 10.0, 0.0), 
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.blue[details.getdept()],
          ),
          title: Text(details.firsName),
          subtitle: Text('${details.department} department'),
        ),
      ),
      
    );
  }
}