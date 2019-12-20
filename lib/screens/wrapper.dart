import 'package:flutter/material.dart';
import 'package:kasas_app/screens/authenticate/authenticate.dart';
import 'package:kasas_app/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:kasas_app/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //wrapping the value of user in user stream and provider


    final user = Provider.of<User>(context);
    print(user);

    //redirect to either home or authenticate
    if (user == null){
      return Authenticate();
    }else{
      return Home();
    }
  }
}
