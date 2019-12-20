class Details{

  final String firsName;
  final String secondName;
  final String department;
  final String position;

  

  //constructor to apply values to the properties from firestore 
  Details({this.firsName, this.secondName, this.department, this.position});

  int getdept(){
    if (department == 'department'){
      return 1;
    }
    else if (department == 'Ops'){
      return 2;
    }
    else if (department == 'Quality'){
      return 3;
    }
    else if (department == 'Cooperate'){
      return 4;
    }
    else{
      return null;
    }
  }

}
