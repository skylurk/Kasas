import 'package:flutter/material.dart';
import 'package:kasas_app/models/user.dart';
import 'package:kasas_app/screens/wrapper.dart';
import 'package:kasas_app/services/auth.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Wrapper(),
        ),
    );
  }
}
