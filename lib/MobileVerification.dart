import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
class MobileVerification extends StatefulWidget
{
  @override
  _MobileVerification createState() =>_MobileVerification();
}
class _MobileVerification extends State <MobileVerification> {
  @override
  void initState() {
    super.initState();

  }
  var verify;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        backgroundColor: Colors.white,
        elevation:0.0,
        title: Text("Verification"),

      ),
      body:SafeArea(
        child: SingleChildScrollView(
          child: //progress?Center( child: CircularProgressIndicator(),):
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[Text("Please enter verification code"),
                    ]
                ),
                SizedBox(
                  height:5,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[Text("sent on given number"),
                    ]
                ),
                SizedBox(
                  height:50,
                ),
                TextFormField(
                  validator: (value) {
                    //Pattern pattern = r'^[a-zA-Z]';
                    //RegExp regex = new RegExp(pattern);
                    if (value.isEmpty) {
                      return 'Please enter verification code';
                    }
                    // else if (!regex.hasMatch(value))
                    //   return 'Invalid Username';
                    // else
                    //   null;
                  },
                  onSaved: (v) {
                    verify = v;
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Verification Code',
                  ),
                ),
                SizedBox(
                  height:350
                ),
                FlatButton(
                  height: 50,
                  minWidth:MediaQuery.of(context).size.width /1,
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text('Continue'),
                  onPressed: () {
                    // Navigator.push(
                    //     context, new MaterialPageRoute(
                    //     builder: (context) => new ConfirmOrder()));
                  },
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
