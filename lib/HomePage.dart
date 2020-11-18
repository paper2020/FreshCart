import 'dart:convert';
import 'dart:io';
import 'package:fishtank_app/MobileVerification.dart';
import 'package:fishtank_app/MyCart.dart';
import 'package:fishtank_app/ViewProfile.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:carousel_pro/carousel_pro.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}
class _HomePage extends State<HomePage> {
  void initState() {
    super.initState();
    //category();
    //profile();
  }
  // var listprofile;
  // bool progress=true;
  // void profile() async{
  //   var url='http://13.234.186.200/user/me';
  //   var token=await Prefmanager.getToken();
  //   Map data={
  //     "to":token,
  //   };
  //   var response = await http.post(url,body:data);
  //   if(json.decode(response.body)['status'])
  //   {
  //     listprofile=json.decode(response.body)['data'];
  //     //print(listprofile[0]['firstname']);
  //   }
  //   else
  //     Fluttertoast.showToast(
  //
  //       msg:json.decode(response.body)['message'],
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.CENTER,
  //
  //     );
  //   progress=false;
  //   setState(() {
  //
  //   });
  //
  // }
  // var listcat=[];
  // void category() async{
  //   var url='http://13.234.186.200/lstcat';
  //   var token=await Prefmanager.getToken();
  //   Map data={
  //     "to":token,
  //   };
  //   var response = await http.post(url,body:data);
  //   if(json.decode(response.body)['status'])
  //   {
  //     listcat=json.decode(response.body)["data"];
  //     print(listcat[0]['_id']);
  //     print(listcat[0]['cname']);
  //   }
  //   else
  //     Fluttertoast.showToast(
  //       msg:json.decode(response.body)['message'],
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.CENTER,
  //     );
  //   if(mounted)
  //     setState(() {});
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
        elevation: 0.0,
      ),

      bottomNavigationBar: BottomAppBar(

        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: IconButton(icon: Icon(Icons.home),onPressed:(){
              Navigator.push(
                  context, new MaterialPageRoute(
                  builder: (context) => new HomePage()));

            },),

            ),
            Expanded(child: IconButton(icon: Icon(Icons.shopping_cart),onPressed:(){
              Navigator.push(
                  context, new MaterialPageRoute(
                  builder: (context) => new MyCart()));
            },),

            ),
            //Expanded(child: new Text('')),
            Expanded(child: IconButton(icon: Icon(Icons.notifications),onPressed:(){
              Navigator.push(
                  context, new MaterialPageRoute(
                  builder: (context) => new MobileVerification()));
            },),

            ),
            Expanded(child: IconButton(icon: Icon(Icons.person),onPressed: (){
              Navigator.push(
                  context, new MaterialPageRoute(
                  builder: (context) => new ViewProfile()));
            },),),
          ],
        ),
      ),
      drawer: Drawer(
        child://progress?Center(child:CircularProgressIndicator(),):
        ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child:Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                    // Row(
                    //     mainAxisAlignment:MainAxisAlignment.center,
                    //     children:[
                    //       CircleAvatar(
                    //         radius: 40,
                    //         backgroundColor: Color(0xFFE3F2FD),
                    //
                    //         backgroundImage:NetworkImage(
                    //             Prefmanager.baseurl+"/document/get/"+listprofile["pro_pic"]),
                    //       ) ,
                    //     ]
                    // ),

                    // Row(
                    //   mainAxisAlignment:MainAxisAlignment.center,
                    //   children: [
                    //     Container(
                    //       padding: new EdgeInsets.all(10.0),
                    //       child:Text(listprofile["firstname"]+" "+listprofile["lastname"],style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    //     ),
                    //   ],
                    // ),
                    SizedBox(
                      height:10,
                      //   width:40,
                    ),
                  ]
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => new HomePage()));
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text('My Account'),
              onTap: () {
                // Navigator.push(
                //     context, new MaterialPageRoute(
                //     builder: (context) => new Profile()));
              },
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('My Wallet'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('My Orders'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help & Support'),
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('About Us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person), title: Text("Change Password"),
              onTap: () {
                //Navigator.push(context,MaterialPageRoute(builder: (context) => ChangePassword()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Logout'),
              onTap: () {
                // Prefmanager.clear();
                // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => new SecondScreen()));
                //Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: 50,
                  padding: EdgeInsets.all(8),
                  //padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: TextField(

                    //onChanged: onTextChange,
                      decoration: InputDecoration(

                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Icons.search,color:Colors.black),
                          hintText: 'Search Your Product ',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.zero
                      )
                  )
              ),
              SizedBox(
                  height: 200.0,
                  //width: double.infinity,
                  // width:340,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Carousel(
                      images: [
                        AssetImage("assets/fishimg1.jpg"),
                        AssetImage("assets/fishimage2.jpg"),
                        AssetImage("assets/fishimage3.jpg"),

                      ],
                      dotColor: Colors.red,
                    ),
                  )),
              SizedBox(
                height:30,
              ),
              Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children:[
                    Container(
                        padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                        alignment: Alignment.topLeft,
                        child:Text("Fresh Arrived",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                    ),

                    // Container(
                    //     padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                    //     alignment: Alignment.topRight,
                    //     child:Text("See all")
                    // ),
                  ]
              ),
              SizedBox(
                height:20,
              ),
              //progress?Center(child:CircularProgressIndicator(),):
              GridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2 ,
                children: List.generate(6,(index){
                  return GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(5) ,
                      //padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(image: AssetImage('assets/fishimage2.jpg')),
                            SizedBox(
                                height:10
                            ),
                            Text("Fish",style:TextStyle(fontWeight: FontWeight.bold,),textAlign:TextAlign.start,overflow: TextOverflow.ellipsis,),
                            SizedBox(
                              height:5
                            ),
                            Text(r"$30"+".00",textAlign:TextAlign.start,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),),
                    onTap: () {
                      //Navigator.push(context, new MaterialPageRoute(builder: (context) => SubCategory(listcat[index]["_id"],listcat[index]['cname'])));
                      //Navigator.pop(context);
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
