import 'package:flutter/material.dart';
class ViewProduct extends StatefulWidget {
  @override
  _ViewProduct createState() => _ViewProduct();
}
class _ViewProduct extends State<ViewProduct> {
  void initState() {
    super.initState();

  }
@override
Widget build(BuildContext context) {
  return new WillPopScope(
    onWillPop: () async => false,
    child: Scaffold(
    appBar: AppBar(
    elevation: 0.0,
      title: Text("View Product",
  ),
      leading: new IconButton(
        icon: new Icon(Icons.arrow_back),
        color: Colors.black,
        onPressed: () => Navigator.of(context).pop(),
      ),
    ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height:30
              ),
              Image(image: AssetImage('assets/fishimage2.jpg'),height:200,width:double.infinity ,fit:BoxFit.fill),
              SizedBox(
                  height:20
              ),
              Text("Tuna",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.start,overflow: TextOverflow.ellipsis,),
              SizedBox(
                  height:5
              ),
              Text(r"$200"+".00",textAlign:TextAlign.start,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(
                  height:20
              ),
              FlatButton(
                height: 50,
                minWidth:MediaQuery.of(context).size.width /0,
                textColor: Colors.white,
                color: Colors.green,
                child: Text('Add To Cart'),
                onPressed: () {
                    //senddata();
                },
              ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children:[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("More by Seller",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ),

                    Container(
                        padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                        alignment: Alignment.topRight,
                        child:Text("See all")
                    ),
                  ]
              ),
              SizedBox(
                height:20,
              ),
            Container(
              height:300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (BuildContext context,int index){
                      return
                        InkWell(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),

                                new Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[

                                    Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Image(image: AssetImage('assets/fishimage2.jpg')),
                                          SizedBox(
                                              height:20
                                          ),
                                          Text("Fish",style:TextStyle(fontWeight: FontWeight.bold,),textAlign:TextAlign.start,overflow: TextOverflow.ellipsis,),
                                          SizedBox(
                                              height:5
                                          ),
                                          Text(r"$30"+".00",textAlign:TextAlign.start,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),),
                                        ]
                                    ),

                                  ],
                                ),
                              ],
                            ),
                            onTap:() {
                              //Navigator.push(context,new MaterialPageRoute(builder: (context)=>new ServiceView(profile[index]['_id'])));
                            }
                        );
                    }
                ),
            ),
            ],
          ),
        ),
      ),
  )
  );
}
}