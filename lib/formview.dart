import 'package:flutter/material.dart';
import 'package:flutter_application_2/profile.dart';

class Testform extends StatefulWidget {
  const Testform({super.key});

  @override
  State<Testform> createState() => _TestformState();
}

class _TestformState extends State<Testform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.green,
                Colors.blue
              ]
            )
          ),
        ),
       leading: IconButton(icon: new Icon(Icons.home,color: Colors.white,), onPressed: () { 
        Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return Profile();
        }));
        },),
        title: Text("Latihan Form"),
         actions: <Widget>[
          
          IconButton( icon: new Icon(Icons.search,color: Colors.white,), onPressed: () {  },)
        ],
        ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            
            child: Form(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  
                  children: [
                  Padding(padding: EdgeInsets.all(10),
                  child: 
                  TextFormField(
                      autofocus: true,
                      decoration: new InputDecoration(
                        
                          hintText: "Masukan Nama Lengkap Anda",
                          labelText: "Nama Lengkap",
                          icon: Icon(Icons.people),
                          border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                          
                          ),
                          
                    ),
                  ),
                    
                   Padding(padding: EdgeInsets.all(10),
                   child: 
                   TextFormField(
                      obscureText: true,
                      decoration: new InputDecoration(
                          hintText: "Masukan Password",
                          labelText: "Password",
                          icon: Icon(Icons.key),
                          border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                          
                          ),
                          
                    ),
                   ),
                    
                  Padding(padding: EdgeInsets.all(10),
                  child: 
                  TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: new InputDecoration(
                          hintText: "Masukan No. Telepon",
                          labelText: "No. Telepon",
                          icon: Icon(Icons.phone),
                          border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                          
                          ),
                          
                    ),
                  ),
                    
                   
                    CheckboxListTile(
                      title: Text("Belajar flutter"),
                      subtitle: Text("Dart, Widget, Http"),
                      value: false,
                      activeColor: Colors.deepPurple,
                      onChanged: (value){},
                      ),
                      SwitchListTile(
                        title: Text('Backend Programming'),
                        subtitle: Text('Dart, Nodejs, PHP, Java, dll'),
                        value: true,
                        activeTrackColor: Colors.pink[100],
                        activeColor: Colors.deepPurple,
                        onChanged: (value) {},
                      ),
                      Slider(
                        value: 25,
                        min: 0,
                        max: 100,
                        onChanged: (value) {},
                      ),
                      ElevatedButton(style: ElevatedButton.styleFrom(onSurface: Colors.red),
                        onPressed: null,
                        child: Text('ElevatedButton with custom disabled colors'),),
                        
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}