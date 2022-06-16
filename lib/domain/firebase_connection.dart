import 'package:firebase_database/firebase_database.dart';
import 'package:third_application/Entities/response_firebase.dart';

import '../Entities/response_firebase.dart';


class FirebaseConnection {
  static final FirebaseDatabase _database =FirebaseDatabase.instance;
  DatabaseReference instanceFirebase (){

    return _database.ref('/Registros');
 
  }

  Future<ResponseFirebase> getData() async{
    try{
    DatabaseReference registros = instanceFirebase();
    DataSnapshot response = await registros.get();
    final responseMap = Map<String, dynamic>.from(response.value as Map);
    final registers = ResponseFirebase.fromJson(responseMap.values.toList());
    return registers;
  }
  catch(error){
    rethrow;
  }
}
}