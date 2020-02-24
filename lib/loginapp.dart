import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 300));
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.easeInToLinear);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
              image: AssetImage("assets/sight.jpg"),
              fit: BoxFit.cover,
              color: Colors.black54,
              colorBlendMode: BlendMode.hardLight),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: _iconAnimation.value * 130,
              ),
              Form(
                child: Theme(
                   data: ThemeData(
                     brightness: Brightness.light, primarySwatch: Colors.green,
                     inputDecorationTheme: new InputDecorationTheme(
                           labelStyle: new TextStyle(
                             color: Colors.lightGreen,
                             fontSize: 18.0
                           )       
                     )),
                    child: Container(
                      padding: EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(labelText: "Enter Email"),
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color:Colors.lightGreen),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Enter Password"),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                         style: TextStyle(color:Colors.lightGreen),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top:25.0),
                        ),

                        MaterialButton(
                          height: 40.0,
                          minWidth:110.0,
                          color: Colors.lightGreen,
                          textColor: Colors.white,
                          child: Text('LOGIN', style: TextStyle(fontSize:15.0)),
                          onPressed: () => {},
                          splashColor: Colors.teal,
                          ),
                      ],
                  ),
                    ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
