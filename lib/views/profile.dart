import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              CircleAvatar( 
              backgroundImage: AssetImage('assets/img/angelica-morales.jpg'),radius: 130),
              Text("\n Name: Angélica Morales",style: TextStyle(fontSize: 20),),
              Text("Username: amorales",style: TextStyle(fontSize: 20),),
              Text("Cel: 3206490408",style: TextStyle(fontSize: 20),),
              Text("Email: amorales@lsv-tech.com",style: TextStyle(fontSize: 20),),
            ],),
        ),
      );

  }
}