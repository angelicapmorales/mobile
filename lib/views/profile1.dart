
import 'package:flutter/material.dart';


class Profile1 extends StatefulWidget{
  const Profile1({Key? key}) : super(key: key);


  @override
  _Profile1 createState() => _Profile1();
}

class _Profile1 extends State<Profile1>{
  final double coverHeight = 200;
  final double  profileHeight = 144;

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body:buildTop(),
    );
  }

  Widget buildTop(){
    final bottom = profileHeight /2;
    final distanceTop = coverHeight - profileHeight /2;

    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center ,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: bottom),
            child: buildCoverImage(), 
          ),
          Positioned(
            top: distanceTop,
            child: buildProfileImage(),),
        ],);
  }
  Widget buildContent()=> Column(
    children: const [
      SizedBox(height: 8,),
      Text('Angelica Morales', style: TextStyle(fontSize: 20, color: Colors.black12),),
      SizedBox(height: 8,),
      Text('This is flutter', style:TextStyle(fontSize: 20, color: Colors.black))
    ],
  );

  Widget buildCoverImage() => Column(
    children: [
      Image.network(
        "https://i.blogs.es/d9663e/coloresandroid/1366_2000.jpg",
        width: double.infinity,
        height: coverHeight,
        fit: BoxFit.cover,
      ),
      const Padding(
        padding: EdgeInsets.only(top: 100),
        child: Text('About me:', style:TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
      ),
      const SizedBox(height: 8,),
      const Center(child: Text('I am Angelica Morales, I am 23 years old', style: TextStyle(fontSize:15))),
      const SizedBox(height: 8,),
      const ListTile(
        leading: Icon(Icons.email, color:Colors.pink),
        title: Text("amorales@lsv-tech.com"),
      ),
      const ListTile(
        leading: Icon(Icons.phone_android_sharp, color:Colors.pink),
        title: Text("3206490408"),
      ),
      const Icon(Icons.computer, size: 50,color: Colors.pink),
    ],
  );

   Widget buildProfileImage() => CircleAvatar(
    radius: profileHeight /2,
    backgroundColor: Colors.grey.shade800,
    backgroundImage: const AssetImage('assets/img/angelica-morales.jpg'),
  );
  
}


