
import 'package:assignment_3/Product.dart';
// import 'package:assignment_3/Userinformation.dart';
import 'package:flutter/material.dart';

// import 'Userinformation.dart';

class Home extends StatefulWidget {
 
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(backgroundColor: Colors.white38,
      
      title: Center(child: Text("Ecom Appp UI", style: TextStyle(color: Colors.black),),),
      leading: IconButton(icon: Icon(Icons.arrow_forward_ios),
      color: Colors.black,
       onPressed: () { 
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Product())
        );
       },),
      actions: [
        Icon(Icons.notifications,color: Colors.black,),
        Padding(padding: EdgeInsets.only(right: 10),)
      ],
      ),
      body:
      SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextField(
              decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal)),
                  hintText: 'Username',
                  labelText: 'Username',
                  suffixIcon:Icon(Icons.search),
        
              ),
              ),
            
            ),
             Text("History"),
          listtile('assets/iphone12promax.jpg',"Iphone 12 Pro Max"),
          listtile('assets/note20ultra.jpg', "Note 20 Ultra"),
          listtile('assets/macbookair.jpg', "Macbok Air"),
          listtile('assets/macbookpro.jpg', "Macbook Pro"),
          listtile('assets/gamingpc.jpeg', "Gaming PC"),
          listtile('assets/backlitkeyboard.jpg', "Backlit Keyboard"),
          listtile('assets/mercedes.jpeg', "Mercedes"),
          listtile('assets/mutton.jpg', "Mutton"),
          listtile('assets/roadster.jpg', "Roadster"),
          listtile('assets/royalfield.jpg', "Royal Field"),
        ],),
      ),

    );
  }
}

Widget listtile(var image,var text){
  return ListTile(
    leading:CircleAvatar(
      backgroundImage: AssetImage(image),
      radius: 15,
    ),
    title: Text(text,style: TextStyle(fontWeight: FontWeight.bold),),
    subtitle:  Stack(children: [
      Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 5,top: 2),
          child: Icon(Icons.star_rate,color: Colors.yellow,size: 15,),
        ) ,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text("5.0 (23 Reviews)"),
        )
    ],),

    // Column(
    //   children: [
    //     Icon(Icons.star_rate, color: Colors.yellow,),
    //     Text("5.0 (23 Reviews)"),
    //   ],
    // ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      Text("\$15")
    ],),
  );
}