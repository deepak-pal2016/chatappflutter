import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

var num1 = 0, num2 = 0, sum = 0;
final TextEditingController t1 = new TextEditingController(text:"0");
final TextEditingController t2 = new TextEditingController(text:"0");

void doaddition(){
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    sum = num1 + num2;
  });
}

void subtraction(){
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    sum = num1 - num2;
  });
}

void multiply(){
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    sum = num1 * num2;
  });
}

void divide(){
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    sum = (num1 / num2).toInt();
  });
}

void clear(){
  setState(() {
    t1.text = "0";
    t2.text = "0";
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text('Calculator')),
      ),
      body: Container(
          padding: EdgeInsets.all(30.0),
         child: Column(
           mainAxisAlignment:MainAxisAlignment.center,
           children: <Widget>[
             Text('OutPut : ${sum}', style: TextStyle(fontSize:20.0,color: Colors.red ), ),
             TextField(
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                 hintText: "Enter Number 1"),
                 controller: t1,
             ),
              TextField(
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                 hintText: "Enter Number 2"),
                 controller: t2,
             ),
             Padding(
               padding: EdgeInsets.only(top:20.0),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                 RaisedButton(
                   splashColor: Colors.green,
                   child: Text('+'),
                   color:Colors.green,
                   onPressed:doaddition,
                 ),
                 RaisedButton(
                   child: Text('-'),
                   color:Colors.green,
                   onPressed: subtraction,
                 ),
                
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                  RaisedButton(
                   child: Text('*'),
                   color:Colors.green,
                   onPressed: multiply,
                 ),
                 RaisedButton(
                   child: Text('/'),
                   color:Colors.green,
                   onPressed: divide,
                 ),
                
               ],
             ),
             Padding(
               padding: EdgeInsets.only(top:10.0),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                  RaisedButton(
                   child: Text('Clear'),
                   color:Colors.green,
                   onPressed: clear,
                 ),
               ],
             )
           ],
           
         ),
      ),
    );
  }
}