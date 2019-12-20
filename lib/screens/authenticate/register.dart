import 'package:flutter/material.dart';
import 'package:kasas_app/services/auth.dart';
import 'package:kasas_app/shared/constants.dart';
import 'package:kasas_app/shared/loading.dart';

class Register extends StatefulWidget {

  final Function toggleView;
  Register({this.toggleView});    

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  //text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(     
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0.0,
        title: Text(
          'Sign Up'
        ),
         actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Sign In'),
            onPressed: () {
              widget.toggleView();
            }
          )
        ],
      ),
      body: Center(
        child: Form(
          key: _formKey, //for validation
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            shrinkWrap: true,
            children: <Widget>[
            
              SizedBox(height: 20.0,),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Email...', prefixIcon: Icon(Icons.mail)),
                validator: (val) => val.isEmpty ? 'Please Enter Email' : null,
                onChanged: (val){
                  setState(() => email = val);
                }
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Password...', prefixIcon: Icon(Icons.lock_outline)),
                obscureText: true,
                validator: (val) => val.length < 6 ? 'Enter Valid Password 6+ char' : null,
                onChanged: (val){
                  setState(() => password = val);
                }
              ),
              SizedBox(height: 20.0),
              MaterialButton(
                minWidth: double.infinity,
                height: 60.0,
                elevation: 20,
                shape: RoundedRectangleBorder(side: BorderSide(
                  color: Colors.blue,width: 1, style: BorderStyle.solid,
                ),
                borderRadius: new BorderRadius.circular(10),
                ),
                color: Colors.blueAccent[200],
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onPressed: () async{
                  //validates form based on its current state
                  if(_formKey.currentState.validate()){
                    setState(() => loading = true);
                     dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                     if(result == null){
                       if(!mounted) return;
                       setState(() {
                         error = 'Please enter a valid email';
                         loading = false;
                       });
                     }
                  }
                }
              ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              )
            ],
          ),
        )
      ), 
    );
  }
}