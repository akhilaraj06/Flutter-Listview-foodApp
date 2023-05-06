import 'package:flutter/material.dart';
import 'package:food_app/info.dart';
import 'package:food_app/string_resource.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'food list app',
     theme: ThemeData(primarySwatch: Colors.red),
     home: MyHome(),
   );
  }
}
class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${StringResource.app_name}'),),
      body: _listView(context),
    );
  }
}
ListView _listView (BuildContext context)
{
  return ListView.builder(
    itemCount: StringResource.items.length,
    itemBuilder: (_, index){
      return Card(child: ListTile(
        title: Text("${StringResource.items[index]}", style: TextStyle(color: Colors.deepOrangeAccent),),
        subtitle: Text('price : ${StringResource.price[index]}', style: TextStyle(color: Colors.black54),),
        leading: Icon(Icons.shopping_cart,color: Colors.green,),
        trailing: IconButton(icon: Icon(Icons.arrow_forward_sharp),
          onPressed: () {
          Navigator.push(
          context,
            MaterialPageRoute(builder: (context) =>
            Info(StringResource.items[index],StringResource.price[index])
          )
          );
          },)
      ),
      );
    },
  );
}