import 'package:flutter/material.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({Key? key}) : super(key: key);

  @override
  State<CountScreen> createState() => _ContadorState();
}

class _ContadorState extends State<CountScreen> {
  int count = 0;

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
            const Text("Number push",
                style: TextStyle(
                    fontSize: 40, color: Color.fromARGB(255, 244, 54, 200))),
            Text('$count', style: sizeText)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
          showMessage();
        },
      ),
    );
  }

  void showMessage() {
    print('HI, Again');
  }
}
