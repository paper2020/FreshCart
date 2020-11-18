import 'dart:convert';
import 'package:fishtank_app/ConfirmOrder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
class MyCart extends StatefulWidget
{
  @override
  _MyCart createState() =>_MyCart();
}
class _MyCart extends State <MyCart> {
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        backgroundColor: Colors.white,
        elevation:0.0,
        title: Text("Your Cart"),

      ),
      body:SafeArea(
        child: SingleChildScrollView(
          child: //progress?Center( child: CircularProgressIndicator(),):
          // Container(
          //   alignment: Alignment.center,
          //   child: Column(
          //     children: [
          //       SizedBox(
          //         height: 200,
          //       ),
          //   Image(image: AssetImage('assets/cart.jpg'),height:100),
          //     SizedBox(
          //       height:20,
          //     ),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //           children:[Text("Your cart is empty",style:TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
          //           ]
          //       ),
          //       SizedBox(
          //         height:5,
          //       ),
          //       Row(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children:[Text("Looks like you haven't added"),
          //           ]
          //       ),
          //       SizedBox(
          //         height:5,
          //       ),
          //       Row(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children:[Text("anything to your cart yet."),
          //           ]
          //       )
          //     ],
          //   ),
          //
          // ),
          Column(
              children: [
                Container(
                  height:300,
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (BuildContext context,int index){
                        return
                          new Card(
                            // shape: RoundedRectangleBorder(
                            //     borderRadius:BorderRadius.circular(10.0)),
                              shape: new RoundedRectangleBorder(
                                //side: new BorderSide(color: Colors.white, width: 2.0),
                                  borderRadius: BorderRadius.circular(10.0)),
                              elevation: 0.0,

                              child: InkWell(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 5,
                                      ),

                                      Expanded(
                                        child: new Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children:[
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              child: ClipRRect(
                                                borderRadius:BorderRadius.circular(65.0),
                                                child:FadeInImage(
                                                  // image:NetworkImage(
                                                  //     Prefmanager.baseurl+"/document/get/"+profile[index]["icon"]) ,
                                                  image: AssetImage('assets/fishimage2.jpg'),
                                                  placeholder: AssetImage("assets/cloud.jpg"),
                                                  fit: BoxFit.fill,
                                                  width:90,
                                                  height:90,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                                child:Column(
                                                    children:[
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        children:[
                                                          Text("Fish",style:TextStyle(fontWeight: FontWeight.bold,)),
                                                          // Expanded(flex:1,child: Text(profile[index]['bid']['name'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height:5,
                                                      ),
                                                      Row(
                                                        children:[
                                                          Text(r"$30"+".00",style: TextStyle(fontWeight: FontWeight.bold),),
                                                          //Expanded(flex:10,child: Text("Mobile:",style: TextStyle(fontSize: 16),)),
                                                          //Expanded(flex:1,child: Text(profile[index]['mobile'],style: TextStyle(fontSize: 16,),)),
                                                        ],
                                                      ),
                                                      // SizedBox(
                                                      //   height:5,
                                                      // ),
                                                      // Row(
                                                      //     children:[
                                                      //       //Expanded(flex:1,child: Text(profile[index]['rate'].toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                                                      //     ]
                                                      // ),
                                                      Row(
                                                          children:[
                                                            FlatButton(
                                                              height: 30,
                                                              // minWidth:MediaQuery.of(context).size.width /0,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.circular(20.0)),
                                                              textColor: Colors.white,
                                                              color: Colors.green,
                                                              child: Text('Remove'),
                                                              onPressed: () {
                                                                //senddata();
                                                              },
                                                            ),
                                                          ]
                                                      ),


                                                    ]
                                                )
                                            ),


                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                  onTap:() {
                                    //Navigator.push(context,new MaterialPageRoute(builder: (context)=>new ServiceView(profile[index]['_id'])));
                                  }

                              )
                          );

                      }
                  ),
                ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height:50
                ),
                const Divider(
                  color: Colors.black,
                  height: 20,
                  thickness: 2,
                  //indent: 20,
                  //endIndent: 20,
                ),
                Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text("Price Details",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.start),
                    ]
                ),

                SizedBox(
                  height:20
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text("Price"),Spacer(),
                      // SizedBox(
                      //   width:30
                      // ),
                      Text(r"$30"+".00",style: TextStyle(fontWeight: FontWeight.bold))

                    ]
                ),
                const Divider(
                  color: Colors.black,
                  height: 20,
                  thickness: 1,
                  //indent: 20,
                  //endIndent: 20,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text("Amount Payable",style: TextStyle(fontWeight: FontWeight.bold),),Spacer(),
                      // SizedBox(
                      //   width:30
                      // ),
                      Text(r"$30"+".00",style: TextStyle(fontWeight: FontWeight.bold)),


                    ]
                ),
                const Divider(
                  color: Colors.black,
                  height: 20,
                  thickness: 2,
                  //indent: 20,
                  //endIndent: 20,
                ),
                SizedBox(
                  height:30,
                ),
                Text(r"Total Amount $ 150.00",style: TextStyle(color:Colors.green,fontWeight: FontWeight.bold),),
                SizedBox(
                  height:20
                ),
                FlatButton(
                  height: 50,
                  minWidth:MediaQuery.of(context).size.width /0,
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text('Place Order'),
                  onPressed: () {
                    Navigator.push(
                        context, new MaterialPageRoute(
                        builder: (context) => new ConfirmOrder()));
                  },
                ),

                  ]
            ),
          ),
          ])
        ),
      ),
    );
  }
}
