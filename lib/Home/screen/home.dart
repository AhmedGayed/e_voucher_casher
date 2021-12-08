import 'package:e_voucher/ActionPage/action_page.dart';
import 'package:e_voucher/Classes/save.dart';
import 'package:e_voucher/Classes/user__model.dart';
import 'package:e_voucher/Classes/user_details.dart';
import 'package:e_voucher/Drawar/widget/navigation_drawer_widget.dart';
import 'package:e_voucher/Drafte%20Pages/actionn_page_old.dart';
import 'package:e_voucher/ActionPage/logo.dart';
import 'package:flutter/material.dart';

import '../../shared_text.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);
  static const String routeName = "/";

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  User userModel = User();
  String storeName="";
  String fullname= "";
  UserDetails userDetails = UserDetails();
  //String Fullname="";
  String qrCode = 'Unknown';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xFF657382)),
        centerTitle: true,
        backgroundColor: Color(0xFFdfedfd),
        title: const Text("Home", style: TextStyle(color: Color(0xFF657382)),),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            // child: Icon(
            //   Icons.shopping_cart,
            // ),
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFf3f4f4),
      body: Center(
        child: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFF8F8F9),
                    Color(0xFFF8F8F9),
                    Color(0xFFF8F8F9),
                    Color(0xFFF8F8F9),
                  ]),
            ),
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 130,
                margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
                decoration: BoxDecoration(
                    color: Color(0xfffdb913),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Image(
                            image: AssetImage(
                                "assest/Evoucher-Cashier-white.png"),
                            width: 90,
                            height: 90)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Color(0xFFF8F8F9),
                              border: Border.all(color: Color(0xFFF8F8F9)),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(100),
                                  bottomRight: Radius.circular(100))),
                        ),
                        /*   Container(height: 80 ,
                           child: VerticalDivider(color: Colors.white,),),*/
                        Column(
                          children: [
                            // Text(
                            //   "'",
                            //   style: TextStyle(color: Colors.white),
                            // ),
                            SizedBox(height: 6,),
                            Text(
                              "'",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "'",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "'",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "'",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "'",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Container(
                          width: 20,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Color(0xFFF8F8F9),
                              border: Border.all(color: Color(0xFFF8F8F9)),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  topRight: Radius.circular(100))),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                        //('$fullname'),

                         SharedText.userName,
                          style:
                          TextStyle(fontSize: 20, color: Color(0xff677480)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          ('$storeName'),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 10, bottom: 0, left: 30),
                            child: Container(
                              height: 50,
                              width: 70,
                              child: const Align(
                                alignment: Alignment.bottomRight,
                                child: Image(
                                  image: AssetImage("assest/seller3.png"),
                                ),
                              ),

                            ),
                          ),
                        ]),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: Text("WELCOME : " + SharedText.userName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Text(SharedText.branchName ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(5.0),
              //   child: Text(SharedText.branchPlace ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
              // ),
              //
              //
              // const CircleAvatar(radius: 50, backgroundImage: AssetImage(
              //   "assest/nike_logo.png",
              // ),),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => AActionPage(
                              pageTitle: "PURCHASE",
                            )));
                  },
                  child: Text('PURCHASE'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFfdb913),
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      minimumSize: Size(double.infinity, 45)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => AActionPage(
                              pageTitle: "REFUND",
                            )));
                  },
                  child: Text('REFUND'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFadc2d9),
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      minimumSize: Size(double.infinity, 45)),
                ),
              ),



            ],
          ),
        ]),
      ),
    );
  }

  @override
  void initState() {
      print("hello state");
    SessionManager sessionManager  = SessionManager(null);
    sessionManager.getUserModel().then((value) {
      if(value!=null) {
        setState(() {
          userModel = value;
          storeName = userModel.StoreBranch!;

        });

      }
    }) ;
    // sessionManager.getUserDetails(userDetails).then((value) {
    //   if(value!=null) {
    //     setState(() {
    //       userDetails = value;
    //       fullname = userDetails.FULLNAME!;
    //     });
    //
    //   }
    // }) ;

  }
}
