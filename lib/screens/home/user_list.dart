
import 'package:flutter/material.dart';
import 'package:kasas_app/models/details.dart';
import 'package:provider/provider.dart';
import 'package:kasas_app/screens/home/user_tile.dart';

//for outputing the users on the page

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {

    final users = Provider.of<List<Details>>(context);
  
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return UserTile(details: users[index]);
      }
       
    );
  }
}