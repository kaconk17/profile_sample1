import 'package:flutter/material.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 247, 251, 246),
        title: Text("TRANSFER"),
        centerTitle: true,
        actions: <Widget>[
          IconButton( icon: new Icon(Icons.more_horiz,color: Colors.black,), onPressed: () {  },)
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: Color.fromARGB(255, 247, 251, 246),
            
          ),
          Container(
            width: 540,
            child: ListView(
              
              children: [
                Container(
                  //color: Colors.white,
                  padding: EdgeInsets.all(30),
                  //height: 200,
                  width: 600,
                  child: Card(
                    
                    color: Colors.white,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(20),
                      
                      title: Text("Lisa Lisa", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                      subtitle: Text("+62 8123 4567 890"),
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 201, 199, 199),
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      trailing: Icon(Icons.article_outlined,color: Colors.grey,size: 40,),
                    ),
                  ),
                  
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  width: 500,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Card(
                    color: Colors.green,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(20),
                      leading: Container(
                        height: 50,
                        width: 80,
                        //child: Icon(Icons.credit_card,size: 50,),
                        child: Image.network("https://money.imgix.net/uswitch-assets-eu/amp/images/product/credit-cards/Barclaycard_platinum_2022.png"),
                      ),
                      title: Text("Silver Card",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                      subtitle: Text("2453 **** **** 8798", style: TextStyle(color: Colors.white),),
                      trailing: Icon(Icons.chevron_right, size: 50,color: Colors.white,),
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: Column(
                    
                    children: [
                      Text("Amount", style: TextStyle(fontSize: 20),),
                      Container(
                        padding: EdgeInsets.only(top: 50),
                        child: Text("\$ 100.00",style: TextStyle(fontSize: 80),),
                      ),
                      Container(
                        //padding: EdgeInsets.only(top: 60),
                        margin: EdgeInsets.only(top: 40),
                        //height: 190,
                        decoration: BoxDecoration(
                              color: Color.fromARGB(255, 226, 225, 225),
                              borderRadius: BorderRadius.circular(10)
                        ),
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: 5,
                        ),
                      ),
                      Container(
                 // width: 200,
                 //height: 50,
                 margin: EdgeInsets.only(top: 20),
                 padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 208, 242, 226),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListTile(
                    title: Text("Bank fee \$4 will be applied",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                    leading: Icon(Icons.info_outline,color: Colors.green,size: 30,),
                  ),

                )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: OutlinedButton(onPressed: (){
                        },
                      
                      style: OutlinedButton.styleFrom(
                        //shape: StadiumBorder(),
                        side: BorderSide.none,
                        padding: EdgeInsets.zero
                        
                       // fixedSize: Size(400, 60)
                      ),
                      child: Ink(
                        //width: 500,
                        //height: 60,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Container(
                            //width: 400,
                           // height: 60,
                           padding: EdgeInsets.all(20),
                            alignment: Alignment.center,
                            child: const Text("SEND", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
                          ),
                      )
                      ),
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}