import 'dart:async';

import 'package:fishtank_app/HomePage.dart';
import 'package:fishtank_app/LoginPage.dart';
import 'package:fishtank_app/MyCart.dart';
import 'package:fishtank_app/SignupPage.dart';
import 'package:fishtank_app/ViewProduct.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color:Colors.white,
          textTheme: TextTheme(
    headline6: TextStyle(color: Colors.black,fontSize:16,fontWeight: FontWeight.bold),
   ),
        ),
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
              MaterialPageRoute(builder:
                  (context) =>
                  SecondPage()
              )
          )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      //child:FlutterLogo(size:MediaQuery.of(context).size.height)
      child: Image(
          image: AssetImage('assets/fishsplash.jpg'), width: 50, height: 50),

    );
  }
}
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Center(
              child:SingleChildScrollView(
                  child:Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Center(child:Text("Welcome to",textScaleFactor: 2,style: TextStyle(fontSize: 10),)),
                       Center(child: Text("FreshCart",textScaleFactor: 2,style: TextStyle(fontSize: 10),)),
                        SizedBox(
                          height:30,
                          width:30,
                        ),


                  Padding(
                      padding: const EdgeInsets.all(8.0),
                        child: Image(image:AssetImage('assets/fishmain.jpg'),height:300,width:MediaQuery.of(context).size.width /0,fit:BoxFit.cover),
                  ),
                        Container(
                            margin: EdgeInsets.all(25),
                            child: SizedBox(
                            width:MediaQuery.of(context).size.width /0,
                              height:40,
                              child: FlatButton(
                                //child: Text('LOGIN', style: TextStyle(fontSize: 20.0,color: Colors.purple,),),
                                textColor: Colors.white,
                                color: Colors.green,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Text('Log in'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>HomePage()),
                                  );
                                  print("hi");
                                },

                              ),
                            )
                        ),
                        Container(
                            margin: EdgeInsets.all(25),
                            child: SizedBox(
                              width:MediaQuery.of(context).size.width /0,
                              height:40,
                              child: FlatButton(
                                //child: Text('REGISTER', style: TextStyle(fontSize: 20.0,color: Colors.purple,),),
                                textColor: Colors.black,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Text('Signup'),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ViewProduct())
                                    //MaterialPageRoute(builder: (context) => DrawerDemo()),
                                  );
                                },
                              ),
                            )
                        ),
                      ]

                  )
              )
          ),
        )
    );
  }
}

