import 'package:assignment_3/Home.dart';
// import 'package:assignment_3/Userinformation.dart';
import 'package:flutter/material.dart';


class Product extends StatefulWidget {
  

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white38,
      
      title: Center(child: Text("Ecom Appp UI", style: TextStyle(color: Colors.black),),),
      leading: Row(
        children: [
          IconButton(icon: Icon(Icons.arrow_back_ios), 
          color: Colors.black,
          onPressed: () { 
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Home())
            );
           },),
            
        ],
      ),
      actions: [
        Icon(Icons.notifications,color: Colors.black,),
        Padding(padding: EdgeInsets.only(right: 10),)
      ],
      ),
      body:  
     
      SingleChildScrollView(
        child: Column(children: [
           listview('assets/iphone12promax.jpg',"Iphone 12 Pro Max","20 pieces \$90","Quantity:1"),
           listview('assets/note20ultra.jpg', "Note 20 Ultra","20 pieces \$90","Quantity:1"),
           listview('assets/macbookair.jpg', "Macbok Air","20 pieces \$90","Quantity:1"),
           listview('assets/macbookpro.jpg', "Macbook Pro","20 pieces \$90","Quantity:1"),
           listview('assets/gamingpc.jpeg', "Gaming PC","20 pieces \$90","Quantity:1"),
           listview('assets/backlitkeyboard.jpg', "Backlit Keyboard","20 pieces \$90","Quantity:1"),
          listview('assets/mercedes.jpeg', "Mercedes","20 pieces \$90","Quantity:1"),
          listview('assets/mutton.jpg', "Mutton","20 pieces \$90","Quantity:1"),
          listview('assets/roadster.jpg', "Roadster","20 pieces \$90","Quantity:1"),
           listview('assets/royalfield.jpg', "Royal Field","20 pieces \$90","Quantity:1"),
          ],),
      ),
      
      
    );
  }
}

Widget listview(var image, var text1,var text2, var text3){
  return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              // color: Colors.grey[100]
              height: 100,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white10
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        image:AssetImage(image),
                        fit: BoxFit.fill,
                        
                         ),
                      shape:BoxShape.rectangle
                    )
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(text1,style: TextStyle(fontWeight: FontWeight.bold),),
                     Stack(children: [
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
                    Text(text2),
                    Text(text3),
                   
                  ],),
                )
              ],
            ),
            ),
          ),
          
        ],
  );
}