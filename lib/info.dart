import 'package:flutter/material.dart';
class Info extends StatelessWidget{
  final String items;
  final int price;
  Info(this.items, this.price);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("$items"),),
        body: Container(
          width: 500,height: 200,
          child: Card(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            elevation: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Food Name:$items",style: TextStyle(fontSize: 25),),
                Text("price: $price",style: TextStyle(fontSize: 18),),

              ],

            ),

          ),
        ),
      ),
    );

  }

}