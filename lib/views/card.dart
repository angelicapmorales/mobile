
import 'package:flutter/material.dart';

class CardCustom extends StatefulWidget {
  const CardCustom({Key? key}) : super(key: key);

   @override
  State<CardCustom> createState() => _CardCustom();
}

class _CardCustom extends State<CardCustom> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        elevation: 2,
        color: Color.fromARGB(232, 0, 255, 221),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: SizedBox(
          width: 370,
          height: 120,
          child:
          Center(child: Text('Clean Card')),
        ),
      ),
    );
  }

  
}


  
