import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:third_application/views/firebase_data.dart';
// import 'package:third_application/views/list_view1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: GetFireBase());
  }
}

// void callDatabase() {
//   DatabaseReference starCountRef =
//       FirebaseDatabase.instance.ref('Registros/');
//   starCountRef.onValue.listen((event) {
//     final data = event.snapshot.value;
//     print(data.toString());
//   });
// }