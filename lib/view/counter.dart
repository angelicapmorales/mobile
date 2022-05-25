import 'package:flutter/material.dart';

class Contador extends StatelessWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizeText = TextStyle(fontSize: 25);
    int count = 0;
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
          count++;
          showMessage();
        },
      ),
    );
  }

  void showMessage() {
    print('HI, Again');
  }
}
