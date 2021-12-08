import 'package:e_voucher/Drawar/widget/navigation_drawer_widget.dart';
import 'package:e_voucher/Home/screen/home.dart';
import 'package:e_voucher/ActionPage/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import '../shared_text.dart';
class ConfirmPage extends StatefulWidget {
  String pageTitle;
  String amount;
   ConfirmPage({Key? key,required this.pageTitle,required this.amount}) : super(key: key);

  @override
  _ConfirmPageState createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFdfedfd),
        iconTheme: IconThemeData(color:Color(0xFF657382)),
        title: Text(widget.pageTitle,style: TextStyle(color:Color(0xFF657382) )),

      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFf3f4f4),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              children: [
                Container(
                  // width: double.infinity,
                  // height: 140,
                  margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  decoration: BoxDecoration(
                      color: Color(0xfffdb913),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.all(10),
                          child: Image(
                              image: AssetImage("assest/Evoucher-Cashier-white.png"),
                              width: 90,
                              height: 90)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 20,
                            height: 10,
                            decoration: BoxDecoration(
                                color: Color(0xfff3f4f4),
                                border: Border.all(color: Color(0xfff3f4f4)),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(100),
                                    bottomRight: Radius.circular(100))),
                          ),
                          /*   Container(height: 80 ,
                           child: VerticalDivider(color: Colors.white,),),*/
                          Column(
                            children: [
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
                                color: Color(0xfff3f4f4),
                                border: Border.all(color: Color(0xfff3f4f4)),
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
                            SharedText.userName,
                            style:
                            TextStyle(fontSize: 20, color: Color(0xff858585)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            SharedText.branchPlace,
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: CircleAvatar(radius: 24,
                                backgroundImage: AssetImage(
                                  "assest/nike_logo.png",
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
                  child: Container(
                    height: 300,
                    color: Colors.transparent,
                    width: double.infinity,
                    child: Stack(children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 300,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding:  EdgeInsets.only(left: 20,top: 10),
                                child: Expanded(
                                  child: Text("Confirm Action ", style:TextStyle(
                                    fontSize: 25,
                                    color: Color(0xFF858585),
                                  ),),
                                ),
                              ),
                              const Divider(
                                color: Colors.grey,
                              ),

                              Container(
                                // width: double.infinity,
                                // height: 140,
                                margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                                decoration: BoxDecoration(
                                    color: const Color(0xffe5ecf4),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.all(10),
                                        child: const Image(
                                            image: AssetImage("assest/Evoucher-Cashier-logo-gray.png"),
                                            width: 90,
                                            height: 90)),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 10,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border:
                                              Border.all(color: Colors.white,),
                                              borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(100),
                                                  bottomRight: Radius.circular(100))),
                                        ),
                                        /*   Container(height: 80 ,
                             child: VerticalDivider(color: Colors.white,),),*/
                                        Column(
                                          children: const [
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
                                              color: Colors.white,
                                              border:
                                              Border.all(color: Colors.white,),
                                              borderRadius: const BorderRadius.only(
                                                  topLeft: Radius.circular(100),
                                                  topRight: Radius.circular(100))),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children:  [
                                        Row(
                                          children: [
                                            Text(
                                              "To :",
                                              style:
                                              TextStyle(fontSize: 15, color: Color(0xffbac8d6)),
                                            ),
                                            Text(
                                              "  My Seflt",
                                              style:
                                              TextStyle(fontSize: 15, color: Color(0xff727d88)),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                            children:  [
                                              Row(
                                                children: [
                                                  Text(
                                                    "Value :",
                                                    style:
                                                    TextStyle(fontSize: 15, color: Color(0xffbac8d6)),
                                                  ),
                                                  Text(
                                                    widget.amount,
                                                    style:
                                                    TextStyle(fontSize: 15, color: Color(0xff727d88)),
                                                  ),
                                                ],
                                              ),

                                            ]),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            height: 60,
                                            width: 100,
                                            child: const Align(
                                                alignment: Alignment.topRight,
                                                child: Text("300",style:
                                                TextStyle(fontSize: 20, color: Color(0xffdd8a3e)),)
                                            ),
                                          ),

                                          /*   Container(height: 80 ,
                             child: VerticalDivider(color: Colors.white,),),*/

                                          Padding(
                                            padding: const EdgeInsets.only(right: 10,bottom: 5),
                                            child: Container(
                                              height: 50  ,
                                              width: 25,
                                              child: const Align(
                                                alignment: Alignment.bottomRight,
                                                child:Image(
                                                  image: AssetImage("assest/trash-alt-3@0.38x.png"),
                                                ),
                                              ),

                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children:  [
                                      // Padding(
                                      //   padding:  const EdgeInsets.only(left: 20),
                                      //   child: Expanded(
                                      //     child: Text("Do You Want To ${widget.pageTitle}\n\nThis Amount: ${widget.amount} ", style:const TextStyle(
                                      //         fontSize: 25,
                                      //         color: Color(0xFF858585),
                                      //         fontWeight: FontWeight.bold),),
                                      //   ),
                                      // )

                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [



                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 1.0), //(x,y)
                                  blurRadius: 6.0,
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),

                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>home()));
                    },
                    child: Text('Confirm'),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFfdb913),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: Size(double.infinity, 45)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Canel'),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xffadc2d9),

                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: Size(double.infinity, 45)),
                  ),
                ),
              ]),
        ),
      ),
    );

  }


//Colored Chips
}