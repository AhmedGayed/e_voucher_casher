// import 'package:e_voucher/Drawar/widget/navigation_drawer_widget.dart';
// import 'package:e_voucher/confirmation_page/confrimation_page.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
//
// import '../shared_text.dart';
// import 'common_button.dart';
// import 'common_quntitiy_button.dart';
//
// // ignore: must_be_immutable
// class ActionPage extends StatefulWidget {
//   String pageTitle;
//
//   ActionPage({Key? key, required this.pageTitle}) : super(key: key);
//
//   @override
//   _ActionPageState createState() => _ActionPageState();
// }
//
// class _ActionPageState extends State<ActionPage> {
//   var height, width;
//   bool isMale = true;
//   int Amount = 20;
//   int weight = 50;
//   var qrstr = "let's Scan it";
//   bool _hasBeenPressed = false;
//   bool _25 = false;
//   bool _50 = false;
//   bool _100 = false;
//   bool _150 = false;
//   bool _200 = false;
//   TextEditingController controller = TextEditingController();
//
//   void addnumber() {
//     setState(() {
//       int temp=int.parse( controller.text);
//       temp++;
//       controller.text=temp.toString();
//     });
//   }
//
//   void subnumber() {
//     setState(() {
//       int temp=int.parse( controller.text);
//       if(temp >0) {
//         temp--;
//         controller.text=temp.toString();
//
//       }
//     });
//   }
//
// @override
//   void initState() {
//   controller.text="1";
//   super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     height = MediaQuery.of(context).size.height;
//     width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       drawer: NavigationDrawerWidget(),
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Color(0xFFdfedfd),
//         title: Text(widget.pageTitle),
//         actions:const [  Padding(
//           padding:  EdgeInsets.all(8.0),
//           child:  Icon(Icons.shopping_cart),
//         )],
//       ),
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Color(0xFFf3f4f4),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             children: [
//             Container(
//             height: double.infinity,
//             width: double.infinity,
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   colors: [
//                     Color(0xFFF8F8F9),
//                     Color(0xFFF8F8F9),
//                     Color(0xFFF8F8F9),
//                     Color(0xFFF8F8F9),
//                   ]),
//             ),
//           ),
//           Column(
//             children: [
//               Container(
//                 // width: double.infinity,
//                 // height: 140,
//                 margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
//                 decoration: BoxDecoration(
//                     color: Color(0xfffdb913),
//                     borderRadius: BorderRadius.circular(15)),
//                 child: Row(
//                   children: [
//                     Container(
//                         margin: EdgeInsets.all(10),
//                         child: Image(
//                             image: AssetImage("assest/final_logo.png"),
//                             width: 90,
//                             height: 90)),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           width: 20,
//                           height: 10,
//                           decoration: BoxDecoration(
//                               color: Color(0xfff3f4f4),
//                               border: Border.all(color: Color(0xfff3f4f4)),
//                               borderRadius: BorderRadius.only(
//                                   bottomLeft: Radius.circular(100),
//                                   bottomRight: Radius.circular(100))),
//                         ),
//                         /*   Container(height: 80 ,
//                            child: VerticalDivider(color: Colors.white,),),*/
//                         Column(
//                           children: [
//                             Text(
//                               "'",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                             Text(
//                               "'",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                             Text(
//                               "'",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                             Text(
//                               "'",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                             Text(
//                               "'",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                             Text(
//                               "'",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ],
//                         ),
//                         Container(
//                           width: 20,
//                           height: 10,
//                           decoration: BoxDecoration(
//                               color: Color(0xfff3f4f4),
//                               border: Border.all(color: Color(0xfff3f4f4)),
//                               borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(100),
//                                   topRight: Radius.circular(100))),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Text(
//                           SharedText.userName,
//                           style:
//                           TextStyle(fontSize: 20, color: Color(0xff858585)),
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           SharedText.branchPlace,
//                           style: TextStyle(fontSize: 30, color: Colors.white),
//                         )
//                       ],
//                     ),
//                     Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: const [
//                           Padding(
//                             padding: EdgeInsets.only(left: 40),
//                             child: CircleAvatar(radius: 24,
//                               backgroundImage: AssetImage(
//                                 "assest/nike_logo.png",
//                               ),
//                             ),
//                           ),
//                         ]),
//                   ],
//                 ),
//               ),
//
//               Padding(
//                 padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
//                 child: Container(
//                   height: 350,
//                   color: Colors.transparent,
//                   width: double.infinity,
//                   child: Stack(children: [
//                     Align(
//                       alignment: Alignment.bottomCenter,
//                       child: Container(
//                         height: 350,
//                         width: double.infinity,
//                         child: Column(
//                           children: [
//                             const SizedBox(
//                               height: 20,
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 const Padding(
//                                   padding: EdgeInsets.all(10.0),
//                                   child: Text(
//                                     "Select Amount",
//                                     style: TextStyle(
//                                         fontSize: 25,
//                                         color: Color(0xFF657382),
//                                       fontWeight: FontWeight.bold
//                                         ),
//                                   ),
//                                 ),
//                                 const Padding(
//                                   padding: EdgeInsets.only(left: 10),
//                                   child: Text(
//                                     "Enter your Amount here ",
//                                     style: TextStyle(
//                                         fontSize: 20, color: Color(0xFF657382)),
//                                   ),
//                                 ),
//                                 const Divider(
//                                   color: Colors.grey,
//                                 ),
//                                 Row(
//                                   children: [
//                                     const Padding(
//                                       padding: EdgeInsets.only(left: 10),
//                                       child: Text(
//                                         "Select Value",
//                                         style: TextStyle(
//                                             fontSize: 20,
//                                             color: Color(0xFF858585),
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                     ),
//                                     const SizedBox(
//                                       width: 25,
//                                     ),
//                                     CommonQuntityButton(
//                                         iconData: Icons.remove,
//                                         onPressed: () => subnumber()),
//                                         // iconData: Icons.add,
//                                         // onPressed: () => addnumber()),
//                                     const SizedBox(
//                                       width: 5,
//                                     ),
//                                     Container(
//                                       width: 100,
//                                       height: 40,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(3),
//
//
//                                       ),
//                                       child: Center(child: TextFormField(
//                                         controller: controller,
//                                         textAlignVertical: TextAlignVertical.center,
//                                         textAlign: TextAlign.center,
//                                         keyboardType: TextInputType.number,
//                                         decoration: const InputDecoration(
//                                           border: OutlineInputBorder(),
//                                           enabledBorder: OutlineInputBorder(
//                                             borderSide: BorderSide(
//                                               color: Color(0xff848484),
//                                             ),
//
//                                             ),
//                                           focusedBorder: OutlineInputBorder(
//                                               borderSide: BorderSide(
//                                                 color: Color(0xff848484),
//
//                                               )),
//                                         ),
//
//
//                                       ),),
//                                     ),
//                                     const SizedBox(
//                                       width: 5,
//                                     ),
//                                     CommonQuntityButton(
//                                       iconData: Icons.add,
//                                        onPressed: () => addnumber()),
//                                   ],
//                                 ),
//                                 const SizedBox(
//                                   height: 20,
//                                 ),
//                                 Column(
//                                   children: [
//                                     Row(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         const SizedBox(
//                                           width: 5,
//                                         ),
//                                         CommonButton(
//                                           value: '5 L.E',
//                                           onPressed: () {
//                                             if (_hasBeenPressed) {
//                                               int temp =int.parse( controller.text);
//                                               temp -=5;
//                                               controller.text=temp.toString();
//                                             } else {
//                                               int temp =int.parse( controller.text);
//                                               temp +=5;
//                                               controller.text=temp.toString();
//                                             }
//                                             setState(() {
//                                               _hasBeenPressed =
//                                                   !_hasBeenPressed;
//                                             });
//                                           },
//                                           isPressed: _hasBeenPressed,
//                                         ),
//                                         const SizedBox(
//                                           width: 5,
//                                         ),
//                                         CommonButton(
//                                           value: '25 L.E',
//                                           onPressed: () {
//                                             if (_25) {
//                                               int temp =int.parse( controller.text);
//                                               temp -=25;
//                                               controller.text=temp.toString();
//                                             } else {
//                                               int temp =int.parse( controller.text);
//                                               temp +=25;
//                                               controller.text=temp.toString();
//                                             }
//                                             setState(() => _25 = !_25);
//                                           },
//                                           isPressed: _25,
//                                         ),
//                                         const SizedBox(
//                                           width: 5,
//                                         ),
//                                         CommonButton(
//                                           value: '50 L.E',
//                                           onPressed: () {
//                                             if (_50) {
//                                               int temp =int.parse( controller.text);
//                                               temp -=50;
//                                               controller.text=temp.toString();
//                                             } else {
//                                               int temp =int.parse( controller.text);
//                                               temp +=50;
//                                               controller.text=temp.toString();
//                                             }
//                                             setState(() => _50 = !_50);
//                                           },
//                                           isPressed: _50,
//                                         ),
//                                         const SizedBox(
//                                           width: 5,
//                                         )
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                                 const SizedBox(
//                                   height: 15,
//                                 ),
//                                 Column(
//                                   children: [
//                                     Row(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         const SizedBox(
//                                           width: 5,
//                                         ),
//                                         CommonButton(
//                                           value: '100 L.E',
//                                           onPressed: () {
//                                             if (_100) {
//                                               int temp =int.parse( controller.text);
//                                               temp -=100;
//                                               controller.text=temp.toString();
//                                             } else {
//                                               int temp =int.parse( controller.text);
//                                               temp +=100;
//                                               controller.text=temp.toString();
//                                             }
//                                             setState(() => _100 = !_100);
//                                           },
//                                           isPressed: _100,
//                                         ),
//                                         const SizedBox(
//                                           width: 5,
//                                         ),
//                                         CommonButton(
//                                           value: '150 L.E',
//                                           onPressed: () {
//                                             if (_150) {
//                                               int temp =int.parse( controller.text);
//                                               temp -=150;
//                                               controller.text=temp.toString();
//                                             } else {
//                                               int temp =int.parse( controller.text);
//                                               temp +=150;
//                                               controller.text=temp.toString();
//                                             }
//                                             setState(() => _150 = !_150);
//                                           },
//                                           isPressed: _150,
//                                         ),
//                                         const SizedBox(
//                                           width: 5,
//                                         ),
//                                         CommonButton(
//                                           value: '200 L.E',
//                                           onPressed: () {
//                                             if (_200) {
//                                               int temp =int.parse( controller.text);
//                                               temp -=200;
//                                               controller.text=temp.toString();
//                                             } else {
//                                               int temp =int.parse( controller.text);
//                                               temp +=200;
//                                               controller.text=temp.toString();
//                                             }
//                                             setState(() => _200 = !_200);
//                                           },
//                                           isPressed: _200,
//                                         ),
//                                         const SizedBox(
//                                           width: 5,
//                                         ),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(15)),
//                       ),
//                     ),
//                     // Container(
//                     //     height: 100,
//                     //     width: 300,
//                     //     child: Stack(
//                     //       children: [
//                     //         Image.asset(
//                     //           "assest/card.png",
//                     //           width: 300,
//                     //         ),
//                     //         Align(
//                     //             alignment: Alignment.bottomRight,
//                     //             child: Padding(
//                     //               padding: const EdgeInsets.symmetric(horizontal: 75.0,),
//                     //               child: Column(
//                     //                 mainAxisAlignment: MainAxisAlignment.center,
//                     //                 crossAxisAlignment: CrossAxisAlignment.center,
//                     //                 children: [
//                     //                   Text(SharedText.userName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.grey),),
//                     //                   const SizedBox(height: 10,),
//                     //                    Text(SharedText.branchName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ,color: Colors.white)),
//                     //                 ],
//                     //               ),
//                     //             ))
//                     //       ],
//                     //     )),
//                   ]
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
//                 child: ElevatedButton(
//                   onPressed: scanQr,
//                   child: Text('Scanner'),
//                   style: ElevatedButton.styleFrom(
//                       primary: Color(0xFFfdb913),
//                       textStyle:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10)),
//                       minimumSize: Size(double.infinity, 45)),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
//                 child: ElevatedButton(
//                   onPressed: (){
//                     Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ConfiermPage(pageTitle: widget.pageTitle,amount:controller.text.toString() ,)));
//                   },
//                   child: Text('next'),
//                   style: ElevatedButton.styleFrom(
//                       primary: Color(0xFFfdb913),
//                       textStyle:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10)),
//                       minimumSize: Size(double.infinity, 45)),
//                 ),
//               ),
//             ],
//           ),
//         ]),
//       ),
//       ));
//   }
//
//   Future<void> scanQr() async {
//     try {
//       FlutterBarcodeScanner.scanBarcode('#2A99CF', 'cancel', true, ScanMode.QR)
//           .then((value) {
//         setState(() {
//           qrstr = value;
//         });
//       });
//     } catch (e) {
//       setState(() {
//         qrstr = 'unable to read this';
//       });
//     }
//   }
//
// }
