import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kasas_app/models/details.dart';

class DatabaseService {

  final String uid;
  DatabaseService({ this.uid });

  //collection reference to firestore database
  final CollectionReference userCollection = Firestore.instance.collection('users');
  //add firestore record to each user when they register

  Future updateUserData(String firsName, String secondName, String department, String position) async{
    return await userCollection.document(uid).setData({
      'firsName': firsName,
      'secondName': secondName,
      'department': department,
      'position': position,
    });
  }

  //get user details list from the snapshots
  List<Details> _userListFromSnapshot(QuerySnapshot snapshot){
    return snapshot.documents.map((doc){
      return Details(
        firsName: doc.data['firsName'] ?? '',
        secondName: doc.data['secondName'] ?? '',
        department: doc.data['department'] ?? '',
        position: doc.data['position'] ?? ''
      );
    }).toList();
  }

  
//get brews stream
//stream gets the data from the firestore and notifies us of changes in the documents in the database
//snapshot of the firestore at the time of change

  Stream<List<Details>> get users{
    return userCollection.snapshots()
    .map(_userListFromSnapshot);
  }
}