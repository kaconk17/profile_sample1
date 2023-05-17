import 'package:flutter/material.dart';

class Testlist extends StatefulWidget {
  const Testlist({super.key});

  @override
  State<Testlist> createState() => _TestlistState();
}

class _TestlistState extends State<Testlist> {
  final List bulan = [
    "januari",
    "Februari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "september",
    "Oktober",
    "November",
    "Desember"
  ] ;

  final List hari = [
    "Senin",
    "Selasa",
    "Rabu",
    "Kamis",
    "Jumat",
    "Sabtu",
    "Minggu"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        //titleSpacing: 30,
        centerTitle: true,
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
        leading: IconButton(icon: new Icon(Icons.home,color: Colors.white,), onPressed: () {  },),
        title: Image.network("https://upload.wikimedia.org/wikipedia/en/thumb/8/85/Flutter_Entertainment_logo.svg/1280px-Flutter_Entertainment_logo.svg.png", height: 50, width: 200,),
        actions: <Widget>[
          IconButton( icon: new Icon(Icons.call, color: Colors.white,), onPressed: () { },),
          IconButton( icon: new Icon(Icons.search,color: Colors.white,), onPressed: () {  },)
        ],
        ),
      body: ListView(
        
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: Text("List nama Bulan", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),

          ),
          Container(
            height: 400,
           child: ListView.builder(
           itemBuilder: (context, index){
            return Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: Text(
                  bulan[index],
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text('Ini subtitile '+ bulan[index]),
                leading: CircleAvatar(
                  child: Text(
                    bulan[index][0],
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            );
           }, itemCount: bulan.length,
           ),
            ),
            Container(
              child: Text("List nama Hari", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
            ),
            Container(
              height: 300,
              child: ListView.separated(itemBuilder: (context, index){
                return Card(
                  child: Padding(padding: const EdgeInsets.all(15.0),
                  child: Text(hari[index], style: TextStyle(fontSize: 18),),),
                );
              }, separatorBuilder: (context,position){
                return Container(
                  color: Colors.green,
                  child: Text("Ini separator", style: TextStyle(fontSize: 12),),
                );
              }, itemCount: hari.length),
            )
        ],
      ),
    );
  }
}