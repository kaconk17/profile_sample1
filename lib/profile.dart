import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State <Profile> createState() =>  ProfileState();
}

class  ProfileState extends State <Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      margin: EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.lime,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 5,
            blurRadius: 5,
          )
        ],
        border: Border.all(
          color: Colors.blue,
          width: 3
        ),
        
      ),
      child: Column(children: [
        Text("Hello"),
      Container(
        height: 200,
        width: 200,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://docs.flutter.dev/assets/images/flutter-logo-sharing.png'),
            fit:BoxFit.cover
          ),
          shape: BoxShape.circle
        )
       ),
        Image.network('https://global-uploads.webflow.com/618fa90c201104b94458e1fb/62bc23fed323a64c29957f73_Handling-background-services-in-Android-and-iOS_Main-Image.jpg',
        color: Colors.grey,
        colorBlendMode: BlendMode.hue,)
      ]),
       
    ), Container(
      height: 150,
      width: 200,
      padding: EdgeInsets.all(10),
      child: Row(children: [
        Text("data"),
        Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Android_logo_2019.png/800px-Android_logo_2019.png", height: 70,width: 70,),
        Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Android_logo_2019.png/800px-Android_logo_2019.png", height: 70, width: 70,)
      ],),
    )
        ],),
        
      ),
    );
  }
}
