import 'package:flutter/material.dart';
import 'package:second_application/view/change_color.dart';
import 'package:second_application/view/count_screen.dart';
import 'package:second_application/view/counter.dart';
import 'package:second_application/view/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: ChangeColor());
  }
}
