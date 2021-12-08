//Padding(
//                 padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
//                 child: Container(
//                   height: 270,
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
//                                     "Transaction Amount",
//                                     style: TextStyle(
//                                         fontSize: 18,
//                                       color: Color(0xff657382),
//                                         ),
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 2,
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 10,right: 10),
//                                   child: const Divider(
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//                                 Row(
//                                   children: [
//                                     const Padding(
//                                       padding: EdgeInsets.only(left: 10),
//                                       child: Text(
//                                         "Select Value",
//                                         style: TextStyle(
//                                             fontSize: 18,
//                                             color: Color(0xff657382),
//                                             ),
//                                       ),
//                                     ),
//                                     const SizedBox(
//                                       width: 25,
//                                     ),
//                                     InkWell(
//                                       onTap:() => subnumber(),
//                                       child: Container(
//                                         width: 40,
//                                         padding: EdgeInsets.all(6),
//                                         decoration: BoxDecoration(
//                                             color: Color(0xfff3f4f4),
//                                             border:
//                                             Border.all(color: Color(0xffdfdede))),
//                                         child: Text(
//                                           "-",
//                                           style: TextStyle(
//                                               color: Color(0xff657382), fontSize: 25),
//                                           textAlign: TextAlign.center,
//                                         ),
//                                       ),
//                                     ),
//                                     // CommonQuntityButton(
//                                     //     iconData: Icons.remove,
//                                     //     onPressed: () => subnumber()),
//                                     // iconData: Icons.add,
//                                     // onPressed: () => addnumber()),
//                                     const SizedBox(
//                                       width: 5,
//                                     ),
//                                     Container(
//                                       width: 120,
//                                       height: 40,
//                                       child: TextFormField(
//                                         controller: controller,
//                                         onChanged: (u) {
//                                           setState(() {
//
//                                           });
//                                         },
//                                         textAlign: TextAlign.center,
//                                         textAlignVertical: TextAlignVertical.center,
//                                         decoration: const InputDecoration(
//                                           //isDense: true,
//                                             contentPadding: EdgeInsets.all(5),
//                                             enabledBorder: OutlineInputBorder(
//                                               borderSide:
//                                               BorderSide(color: Color(0xffdfdede)),
//                                             ),
//                                             focusedBorder: OutlineInputBorder(
//                                               borderSide:
//                                               BorderSide(color: Color(0xffdfdede)),
//                                             )),
//                                         keyboardType: TextInputType.number,
//                                       ),
//                                     ),
//                                     // Container(
//                                     //   width: 100,
//                                     //   height: 35,
//                                     //   decoration: BoxDecoration(
//                                     //     borderRadius: BorderRadius.circular(3),
//                                     //   ),
//                                     //   child: Center(
//                                     //     child: TextFormField(
//                                     //       style: TextStyle(color: Color(0xff657382),),
//                                     //       controller: controller,
//                                     //       textAlignVertical:
//                                     //           TextAlignVertical.center,
//                                     //       textAlign: TextAlign.center,
//                                     //       keyboardType: TextInputType.number,
//                                     //       decoration: const InputDecoration(
//                                     //         border: OutlineInputBorder(),
//                                     //         enabledBorder: OutlineInputBorder(
//                                     //           borderSide: BorderSide(
//                                     //             color: Color(0xff657382),
//                                     //           ),
//                                     //         ),
//                                     //         focusedBorder: OutlineInputBorder(
//                                     //             borderSide: BorderSide(
//                                     //           color: Color(0xff657382),
//                                     //         )),
//                                     //       ),
//                                     //     ),
//                                     //   ),
//                                     // ),
//                                     const SizedBox(
//                                       width: 5,
//                                     ),
//                                     InkWell(
//                                       onTap: () => addnumber(),
//                                       child: Container(
//                                         width: 40,
//                                         padding: EdgeInsets.all(6),
//                                         decoration: BoxDecoration(
//                                             color: Color(0xfff3f4f4),
//                                             border:
//                                             Border.all(color: Color(0xffdfdede))),
//                                         child: Text(
//                                           "+",
//                                           style: TextStyle(
//                                               color: Color(0xff657382), fontSize: 25),
//                                           textAlign: TextAlign.center,
//                                         ),
//                                       ),
//                                     ),
//                                     // CommonQuntityButton(
//                                     //     iconData: Icons.add,
//                                     //     onPressed: () => addnumber()),
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
//                                               int temp =
//                                                   int.parse(controller.text);
//                                               temp -= 5;
//                                               controller.text = temp.toString();
//                                             } else {
//                                               int temp =
//                                                   int.parse(controller.text);
//                                               temp += 5;
//                                               controller.text = temp.toString();
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
//                                               int temp =
//                                                   int.parse(controller.text);
//                                               temp -= 25;
//                                               controller.text = temp.toString();
//                                             } else {
//                                               int temp =
//                                                   int.parse(controller.text);
//                                               temp += 25;
//                                               controller.text = temp.toString();
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
//                                               int temp =
//                                                   int.parse(controller.text);
//                                               temp -= 50;
//                                               controller.text = temp.toString();
//                                             } else {
//                                               int temp =
//                                                   int.parse(controller.text);
//                                               temp += 50;
//                                               controller.text = temp.toString();
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
//                                               int temp =
//                                                   int.parse(controller.text);
//                                               temp -= 100;
//                                               controller.text = temp.toString();
//                                             } else {
//                                               int temp =
//                                                   int.parse(controller.text);
//                                               temp += 100;
//                                               controller.text = temp.toString();
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
//                                               int temp =
//                                                   int.parse(controller.text);
//                                               temp -= 150;
//                                               controller.text = temp.toString();
//                                             } else {
//                                               int temp =
//                                                   int.parse(controller.text);
//                                               temp += 150;
//                                               controller.text = temp.toString();
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
//                                               int temp =
//                                                   int.parse(controller.text);
//                                               temp -= 200;
//                                               controller.text = temp.toString();
//                                             } else {
//                                               int temp =
//                                                   int.parse(controller.text);
//                                               temp += 200;
//                                               controller.text = temp.toString();
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
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey,
//                                 offset: Offset(0.0, 1.0), //(x,y)
//                                 blurRadius: 6.0,
//                               ),
//                             ],
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(15)),
//                       ),
//                     ),
//                   ]),
//                 ),
//               ),