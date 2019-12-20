import 'package:flutter/material.dart';
import 'package:kasas_app/models/details.dart';

class CaptainHandover extends StatefulWidget {

    final Details details;
    CaptainHandover({ this.details });

  @override
  _CaptainHandoverState createState() => _CaptainHandoverState();
}


class _CaptainHandoverState extends State<CaptainHandover> {

  List<String> _aircraft = ['JCA', 'KBJ', 'LTS', 'DFH']; // Option 2
  String _selectedaircraft; // Option 2


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          'Handover',
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.blueAccent[100],
        child: Form(
          child: ListView(  
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5.0),
            shrinkWrap: true,
            children: <Widget>[

              Card(
                margin: EdgeInsets.fromLTRB(2.0, 5.0, 5.0, 2.0),
                
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Departing Officer',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5.0,),

                      Text(
                        'Full Name',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              
              Card(
                margin: EdgeInsets.fromLTRB(2.0, 5.0, 5.0, 2.0),
                
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Incoming Officer',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5.0,),

                      Text(
                        'Full Name',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              Card(
                margin: EdgeInsets.fromLTRB(2.0, 5.0, 5.0, 2.0),
                
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Aircraft 5Y',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5.0,),

                      DropdownButton(
                      hint: Text('Select Aircraft'),
                
                      value: _selectedaircraft,
                      onChanged: (newValue){
                        setState((){
                          _selectedaircraft = newValue;
                  });
                },
                items: _aircraft.map((aircraft){
                  return DropdownMenuItem(child: new Text(aircraft),
                  value: aircraft,
                  );
                }).toList(),
              ),

                    ],
                  ),
                ),
              ),
              
              Card(
                margin: EdgeInsets.fromLTRB(2.0, 5.0, 5.0, 2.0),
                
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Safety Occurance',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),


                      SizedBox(height: 16.0,),

                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        minLines: 4,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your Comments',
                          labelText: 'Remarks...',
                           fillColor: Colors.blueGrey[50],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.blueGrey[50]) 
                            )
                        ),
                      ),

                      
                    ],
                  ),
                ),
              ),


              Card(
                margin: EdgeInsets.fromLTRB(2.0, 5.0, 5.0, 2.0),
                
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Hazards',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16.0,),

                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        minLines: 4,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your Comments',
                          labelText: 'Remarks...',
                           fillColor: Colors.blueGrey[50],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.blueGrey[50]) 
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.green),
                              gapPadding: 5.0,
                            )
                        ),
                      ),

                      
                    ],
                  ),
                ),
              ),

             
            Card(
                margin: EdgeInsets.fromLTRB(2.0, 5.0, 5.0, 2.0),
                
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Local Security Updates',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16.0,),

                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        minLines: 4,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your Comments',
                          labelText: 'Remarks...',
                           fillColor: Colors.blueGrey[50],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.blueGrey[50]) 
                            )
                        ),
                      ),

                      
                    ],
                  ),
                ),
              ),
         
         Card(
                margin: EdgeInsets.fromLTRB(2.0, 5.0, 5.0, 2.0),
                
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Operational Updates',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16.0,),

                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        minLines: 4,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your Comments',
                          labelText: 'Remarks...',
                           fillColor: Colors.blueGrey[50],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.blueGrey[50]) 
                            )
                        ),
                      ),

                      
                    ],
                  ),
                ),
              ),

Card(
                margin: EdgeInsets.fromLTRB(2.0, 5.0, 5.0, 2.0),
                
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Accomodation Situation',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16.0,),

                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        minLines: 4,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your Comments',
                          labelText: 'Remarks...',
                           fillColor: Colors.blueGrey[50],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.blueGrey[50]) 
                            )
                        ),
                      ),

                      
                    ],
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.fromLTRB(2.0, 5.0, 5.0, 2.0),
                
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Deffered Defects',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16.0,),

                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        minLines: 4,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your Comments',
                          labelText: 'Remarks...',
                           fillColor: Colors.blueGrey[50],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.blueGrey[50]) 
                            )
                        ),
                      ),

                      
                    ],
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.fromLTRB(2.0, 5.0, 5.0, 2.0),
                
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Aircraft Condition',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16.0,),

                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        minLines: 4,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your Comments',
                          labelText: 'Remarks...',
                           fillColor: Colors.blueGrey[50],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.blueGrey[50]) 
                            )
                        ),
                      ),

                      
                    ],
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.fromLTRB(2.0, 5.0, 5.0, 2.0),
                
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Crew Member Rotations',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16.0,),

                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        minLines: 4,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your Comments',
                          labelText: 'Remarks...',
                           fillColor: Colors.blueGrey[50],
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.blueGrey[50]) 
                            )
                            
                        ),
                      ),

                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
      
    );
  }
}