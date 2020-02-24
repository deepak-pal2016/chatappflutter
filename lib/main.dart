import 'package:flutter/material.dart';
import 'package:learn_app/chat.dart';
import 'package:learn_app/loginapp.dart';
import 'package:learn_app/home_page.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "My Fluter learning App",
        home: new ChatApp(),
        // theme: new ThemeData(
        //   primaryColor: Colors.lightGreen,
        //   brightness: Brightness.light,
        //   accentColor: Colors.green,
        // ),
    );
  }
}

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }



// class _HomePageState extends State<HomePage> {
//   String myText = 'Hello React Native';

//   void _changtext(){
//     setState(() {
//       if(myText.startsWith("N")){
//         myText = 'Hello React Native';
//       }else{
//           myText = "New Welcome in flutter";
//       }
//     });
//   }

//   Widget _bodywidget(){
//      return Container(
//        padding: const EdgeInsets.all(12.0),
//        child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//              Text(myText, style: TextStyle(
//                color: Colors.lightGreen,
//                fontSize: 18.0,
//                letterSpacing: 1,
//                fontFamily: 'Lato'
//              ),),
          
//           ],
//         ), 
//        ),
//      );
// }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: Center(child: new Text("Home Page", style: TextStyle(color:Colors.white, fontSize:20.0)
//         ,)
//         ),
//       ),
//       body: _bodywidget(),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add_call),
//         onPressed: _changtext,
//       ),
//     );
//   }
// }