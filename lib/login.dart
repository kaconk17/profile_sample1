import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Frmlogin extends StatefulWidget {
  const Frmlogin({super.key});

  @override
  State<Frmlogin> createState() => _FrmloginState();
}

class _FrmloginState extends State<Frmlogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color.fromARGB(255, 150, 199, 250),
                Colors.blue
              ]
            )
          ),
          ),
          Container(
           child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                margin: EdgeInsets.all(100),
                decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://docs.flutter.dev/assets/images/flutter-logo-sharing.png'),
                          fit:BoxFit.cover
                        ),
                        shape: BoxShape.circle
                      )
              ),
              Container(
                child: Stack(alignment: Alignment.center,
                
                children: [
                   Container(
                    height: 460,
                    width: 490,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 190, 226, 242),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    //color: Colors.white,
                    height: 460,
                    width: 500,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                           
                            border: Border.all(
                              color: Colors.white,
                              width: 3
                            ),
                    ),
                    child: Column(children: [
                      Padding(padding: EdgeInsets.all(20),
                      child: Text("Login", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),),
                      Padding(padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: new InputDecoration(
                        
                          hintText: "Email address",
                          labelText: "Email",
                      
                         
                          
                          ),
                      ),),
                       Padding(padding: EdgeInsets.all(20),
                      child: TextField(
                        obscureText: true,
                        decoration: new InputDecoration(
                        
                          hintText: "Passord",
                          labelText: "Password",
                      
                         
                          
                          ),
                      ),),
                      
                      OutlinedButton(onPressed: null,
                      
                      style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        padding: EdgeInsets.zero
                        
                       // fixedSize: Size(400, 60)
                      ),
                      child: Ink(
                        //width: 500,
                        //height: 60,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              
                              colors: <Color>[
                                Color.fromARGB(255, 150, 199, 250),
                                Colors.blue
                              ]
                            ),
                            borderRadius: BorderRadius.circular(40)
                          ),
                          child: Container(
                            width: 400,
                            height: 60,
                            alignment: Alignment.center,
                            child: const Text("GO!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
                          ),
                      )
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 40),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Not a Registered Member ? "),
                            Text("Sign Up",style: TextStyle(fontSize: 20, color: Colors.blue),)
                          ],
                        ),
                      )
                    ]),
                  )
                ],),
              ),
             
              
            ],
           ),
          )
        ],
      ),
    );
  }
}