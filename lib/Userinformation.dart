import 'package:flutter/material.dart';

import 'Home.dart';
import 'Product.dart';



class Userinformation extends StatefulWidget {
 

  @override
  _UserinformationState createState() => _UserinformationState();
}

class _UserinformationState extends State<Userinformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white38,
      
      title:
         Padding(
           padding: const EdgeInsets.only(left:60),
           child: SizedBox(width: 130,
             child: Text("Ecom Appp UI", style: TextStyle(color: Colors.black,fontSize: 20),)
                
               
           ),
         ),
      leading:   Padding(
        padding: const EdgeInsets.only(left: 0,right: 1),
        child: Row(
              children: [
                Container(
                  width: 15,
                  color: Colors.white70,
                  child: IconButton(icon: Icon(Icons.arrow_back_ios,size: 15,), 
                  color: Colors.black,
                  onPressed: () { 
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Home())
                    );
                   },),
                ),
                   Padding(
                     padding: const EdgeInsets.only(left: 0),
                     child: Container(
                       width: 15,
                       color: Colors.white70,
                       child: IconButton(icon: Icon(Icons.arrow_forward_ios,size: 15,),
                color: Colors.black,
                onPressed: () { 
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Product())
                        );
                 },),
                     ),
                   ),
                  
              ],
            ),
      ),
      
      actions: [
        Icon(Icons.notifications,color: Colors.black,),
        Padding(padding: EdgeInsets.only(right: 10),)
      ],
      ),

      body: Column(children: [
          listtile()
      ],),
    );
  }
}

Widget listtile(){
  return ListTile(
    leading: Column(
      
      children: [
        CircleAvatar(
           backgroundImage: AssetImage('assets/usericon.png'),
            radius: 20,
          ),
      ],
    ),
    
    title: Column(children: [
      Text("User",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
      Text("abc@gamil.com"),
    ],),
    subtitle: Text("logout"),

  );
}


