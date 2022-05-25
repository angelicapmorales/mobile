import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 214, 245),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 212, 6, 249),
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text("THis is the HOME"),
      ),
    );
  }
}
