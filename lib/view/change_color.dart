import 'package:flutter/material.dart';

class ChangeColor extends StatefulWidget {
  const ChangeColor({Key? key}) : super(key: key);

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  int count = 0;

  Color mycolor = const Color.fromARGB(255, 244, 54, 200);

  @override
  Widget build(BuildContext context) {
    const sizeText = TextStyle(fontSize: 25);

    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 16, 214, 245),
      appBar: AppBar(
        elevation: 8.0,
        backgroundColor: const Color.fromARGB(255, 212, 6, 249),
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("COUNTER", style: TextStyle(fontSize: 40, color: mycolor)),
            Text('$count', style: sizeText)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
            if (count % 2 == 0) {
              mycolor = const Color.fromARGB(255, 2, 27, 247);
            } else {
              mycolor = const Color.fromARGB(255, 244, 54, 200);
            }
          });
        },
      ),
    );
  }
}
