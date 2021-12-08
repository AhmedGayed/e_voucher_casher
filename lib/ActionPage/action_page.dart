import 'dart:convert';

import 'package:e_voucher/Classes/const.dart';
import 'package:e_voucher/Classes/save.dart';
import 'package:e_voucher/Classes/user__model.dart';
import 'package:e_voucher/Classes/user_details.dart';
import 'package:e_voucher/Classes/vocher.dart';
import 'package:e_voucher/Classes/voucher_req.dart';
import 'package:e_voucher/Classes/vouchers.dart';
import 'package:e_voucher/Drawar/widget/navigation_drawer_widget.dart';
import 'package:e_voucher/ActionPage/common_button.dart';
import 'package:e_voucher/ActionPage/common_quntitiy_button.dart';
import 'package:e_voucher/Login/components/rounded_button.dart';
import 'package:e_voucher/Login/screen/login.dart';
import 'package:e_voucher/any/any.dart';
import 'package:e_voucher/confirmation_page/cconfrom_page.dart';
import 'package:e_voucher/confirmation_page/confirm_page.dart';
import 'package:e_voucher/Drafte%20Pages/confrimation_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:http/http.dart'as http;

import '../shared_text.dart';

class AActionPage extends StatefulWidget {
  String pageTitle;

  AActionPage({Key? key, required this.pageTitle}) : super(key: key);

  @override
  _AActionPageState createState() => _AActionPageState();
}

class _AActionPageState extends State<AActionPage> {
  var height, width;

  bool isMale = true;
  int Amount = 20;
  int weight = 50;
  var qrstr = "let's Scan it";
  User userModel = User();
  String storeName = "";
  String fullname = "";
  UserDetails userDetails = UserDetails();
  String Fullname = "";
  bool _hasBeenPressed = false;

  // bool _25 = false;
  // bool _50 = false;
  // bool _100 = false;
  // bool _150 = false;
  // bool _200 = false;
  String qrCode = 'Unknown';
  int ?voucherid;

  var allToken = "";
  vouchers voucherObject = vouchers();
   // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  TextEditingController controller = TextEditingController();
  var amount = 0;
  var numOfCards = 1;
  var editTextValue = new TextEditingController(text: "0");
  bool _25 = false,
      _50 = false,
      _100 = false,
      _200 = false,
      _300 = false,
      _500 = false;

  void addnumber() {
    setState(() {
      int temp = int.parse(controller.text);
      temp++;
      controller.text = temp.toString();
    });
  }

  void subnumber() {
    setState(() {
      int temp = int.parse(controller.text);
      if (temp > 0) {
        temp--;
        controller.text = temp.toString();
      }
    });
  }

  Future GetTokenN(String userName, String passWord,
      BuildContext context) async {
    String url = AppConstants.API+"Token";

    var response = await http.get(Uri.parse(url),
        headers: {
          AppConstants.usernameHeader: AppConstants.UserNameToken,
          AppConstants.passwordHeader: AppConstants.PasswordToken,
          "content-type": "application/json",
          "accept": "application/json",
        });

    if (response.statusCode == 200) {
      print("here is token");


      final body = json.decode(response.body);
      String allToken = AppConstants.Bearer + body;
      print(allToken);
      SessionManager sessionManager = new SessionManager(context);
      sessionManager.saveToken(allToken);
      getVoucher(100, allToken);
    }
  }

  String userName = AppConstants.UserNameToken;
  String password = AppConstants.PasswordToken;


  Future getVoucher(int voucherid, String tokenG) async {
    final queryParameters = {
      'VoucherId': voucherid.toString(),
    };
    final uri =
    Uri.http(AppConstants.IP, AppConstants.ROAPI+'Voucher/GetVoucherDetails',
        queryParameters);

    // String url = "http://62.68.249.222/EVOUCHERHUB/api/Voucher/GetVoucherDetails";

    var response = await http.get(uri, headers: {
      AppConstants.KEY_ACCESS_TOKEN: tokenG,
    });


    if (response.statusCode == 200) {

      print("voucherrrrrrrrrr");
      voucherObject = vouchers.fromJson(jsonDecode(response.body));
      AppConstants.vousherID = voucherObject.VOUCHERID!;
      AppConstants.userID=voucherObject.CREATEUSERIDFK!;
      if (voucherObject.VOUCHERSTATUSIDFK==1){
        print("data " + voucherObject.NAMEDVALUE.toString());
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) =>
                confrmationPage(
                    pageTitle: widget.pageTitle,
                    amount: editTextValue.text.toString(),
                    voucherObject: voucherObject
                )));
      }else{
        _showDialog();

      }


    } else if (response.statusCode == 401) {
      GetTokenN(userName, password, context);
      print("401");
    }

    else {

      print("nidffsfafsfffw");
    }
  }



  // var scaffoldKey = GlobalObjectKey(ScaffoldState);
  //
  @override
  Widget build(BuildContext context) {
    height = MediaQuery
        .of(context)
        .size
        .height;
    width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      // key: scaffoldKey,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xFF657382)),
        centerTitle: true,
        backgroundColor: Color(0xFFdfedfd),
        title: Text(
          widget.pageTitle, style: TextStyle(color: Color(0xFF657382)),),
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
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 15),
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Transaction Amount",
                          style:
                          TextStyle(fontSize: 20, color: Color(0xff657382)),
                          textAlign: TextAlign.center,
                        ),

                        Divider(
                          color: Color(0xff858585),
                        ),

                        Row(
                          children: [
                            Text(
                              "Select Value",
                              style: TextStyle(
                                  color: Color(0xff657382), fontSize: 18),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (amount != 0) {
                                    //  amount--;
                                    // editTextValue.text = amount.toString();
                                    editTextValue.text =
                                        (int.parse(editTextValue.text) - 1)
                                            .toString();
                                    amount = numOfCards *
                                        int.parse(editTextValue.text);
                                  }
                                });
                              },
                              child: Container(
                                width: 40,
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: Color(0xfff3f4f4),
                                    border:
                                    Border.all(color: Color(0xffdfdede))),
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                      color: Color(0xff657382), fontSize: 25),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                              width: 120,
                              height: 40,
                              child: TextFormField(
                                controller: editTextValue,
                                onChanged: (u) {
                                  setState(() {
                                    if (u.isNotEmpty) {
                                      amount = int.parse(u) * numOfCards;
                                    } else {
                                      amount = 0;
                                    }
                                  });
                                },
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.center,
                                decoration: const InputDecoration(
                                  //isDense: true,
                                    contentPadding: EdgeInsets.all(5),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Color(0xffdfdede)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Color(0xffdfdede)),
                                    )),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  // amount++;
                                  editTextValue.text =
                                      (int.parse(editTextValue.text) + 1)
                                          .toString();
                                  amount = numOfCards *
                                      int.parse(editTextValue.text);
                                });
                                print(amount);
                              },
                              child: Container(
                                width: 40,
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: Color(0xfff3f4f4),
                                    border:
                                    Border.all(color: Color(0xffdfdede))),
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      color: Color(0xff657382), fontSize: 25),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            /*Expanded(
                              child: InkWell(
                                onTap: () {
                                  amount=25;
                                  editTextValue.text = "25";
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    "25",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xff657382), fontSize: 17),
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xffdfdede),
                                      ),
                                      borderRadius: BorderRadius.circular(3)),
                                ),
                              ),

                            ),*/
                            CommonButton(
                                value: "25",
                                onPressed: () {
                                  setState(() {
                                    _25 = true;
                                    _50 = false;
                                    _100 = false;
                                    _200 = false;
                                    _300 = false;
                                    _500 = false;
                                    amount = 25 * numOfCards;
                                    editTextValue.text = "25";
                                  });
                                },
                                isPressed: _25
                            ),
                            SizedBox(
                              width: 10,
                            ),

                            CommonButton(
                                value: "50",
                                onPressed: () {
                                  setState(() {
                                    _50 = true;
                                    _25 = false;
                                    _100 = false;
                                    _200 = false;
                                    _300 = false;
                                    _500 = false;
                                    amount = 50 * numOfCards;
                                    editTextValue.text = "50";
                                  });
                                },
                                isPressed: _50
                            ),
                            SizedBox(
                              width: 10,
                            ),

                            CommonButton(
                              value: "100",
                              onPressed: () {
                                setState(() {
                                  amount = 100 * numOfCards;
                                  _25 = false;
                                  _50 = false;
                                  _100 = true;
                                  _200 = false;
                                  _300 = false;
                                  _500 = false;
                                  editTextValue.text = "100";
                                });
                              },
                              isPressed: _100,
                            )
                          ],
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [

                            CommonButton(
                              value: "200",
                              onPressed: () {
                                setState(() {
                                  _25 = false;
                                  _50 = false;
                                  _100 = false;
                                  _200 = true;
                                  _300 = false;
                                  _500 = false;
                                  amount = 200 * numOfCards;
                                  editTextValue.text = "200";
                                });
                              },
                              isPressed: _200,
                            ),
                            SizedBox(
                              width: 10,
                            ),

                            CommonButton(
                                value: "300",
                                onPressed: () {
                                  setState(() {
                                    _25 = false;
                                    _50 = false;
                                    _100 = false;
                                    _200 = false;
                                    _300 = true;
                                    _500 = false;
                                    amount = 300 * numOfCards;
                                    editTextValue.text = "300";
                                  });
                                },
                                isPressed: _300
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CommonButton(
                                value: "500",
                                onPressed: () {
                                  setState(() {
                                    _25 = false;
                                    _50 = false;
                                    _100 = false;
                                    _200 = false;
                                    _300 = false;
                                    _500 = true;
                                    amount = 500 * numOfCards;
                                    editTextValue.text = "500";
                                  });
                                },
                                isPressed: _500
                            )
                          ],
                        ),


                      ],
                    ),
                  ),
                ),
              ),

              Text(
                '$qrCode',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: ElevatedButton(
                  onPressed: scanQRCode,
                  child: const Text('Scanner'),
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      primary: const Color(0xFFfdb913),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: const Size(double.infinity, 45)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: ElevatedButton(
                  onPressed: ()
                   async {
                    if ( amount== 0){
                      await noAmountDialog(context);
                    }else {
                      await showInformationDialog(context);

                    }

                    // SessionManager sessionManager = SessionManager(context);
                    // sessionManager.getToken().then((value) {
                    //   if(value!=null){
                    //     getVoucher(100, value);
                    //   }
                    // } );
                    //
                    //
                    // if (voucherid!=null){
                    //
                    //   GV.getVoucher();
                    //
                    // }else{
                    //
                    //   GV.getVoucher(voucherid, allToken);

                   // }
                  },
                    //
                  // SessionManager sessionManager = SessionManager(context);
                  // sessionManager.getToken().then((value) {
                  //   if(value!=null){
                  //     getVoucher(100, value);
                  //   }
                  // } );
                  //
                  //
                  // if (voucherid!=null){
                  //
                  //   GV.getVoucher();
                  //
                  // }else{
                  //
                  //   GV.getVoucher(voucherid, tokenG)
                  //
                  // }
                  /*  Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => confrmationPage(
                              pageTitle: widget.pageTitle,
                              amount: controller.text.toString(),
                            )));*/

                  child: const Text('Enter Voucher Id'),
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      primary: const Color(0xFFfdb913),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: const Size(double.infinity, 45)),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Future<void> scanQRCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.QR,
      );

      if (!mounted) return;

      setState(() {
        this.qrCode = qrCode;
      });
    } on PlatformException {
      qrCode = 'Failed to get platform version.';
    }
  }

  @override
  void initState() {
    print("hello state");
    SessionManager sessionManager = SessionManager(null);
    sessionManager.getUserModel().then((value) {
      if (value != null) {
        setState(() {
          userModel = value;
          storeName = userModel.StoreBranch!;
        });
      }
    });
    sessionManager.getUserDetails(userDetails).then((value) {
      if (value != null) {
        setState(() {
          //   userDetails = value;
          //  fullname = userDetails.FULLNAME!;
        });
      }
    });
  }




  Future<void> showInformationDialog(BuildContext context) async {

    return await showDialog(context: context,
        builder: (context) {
          final TextEditingController _textEditingController = TextEditingController();
          bool isChecked = false;
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              // shape: CircleBorder(),
              content: Form(
                  //key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:65 ),
                        child: Text("Enter  The Voucher Id"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _textEditingController,
                          validator: (value) {
                             return value!.isNotEmpty ? null : "Enter Voucher Id";

                                    },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Enter Voucher Id",


                            suffixIcon: _textEditingController.text.isEmpty
                                ? Container(width: 0)
                                : IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () =>
                                  _textEditingController.clear(),
                            ),
                            border: const OutlineInputBorder(),
                            enabledBorder: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff848484),
                                  width: 1,
                                )),
                          ),
                          keyboardType: TextInputType.number,


                          // autofocus: true,
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        ],
                      )
                    ],
                  )),
              actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                onPressed: () {

                SessionManager sessionManager = SessionManager(context);
                sessionManager.getToken().then((value) {
                  if (value != null) {
                    getVoucher(int.parse(_textEditingController.text), value);
                  }

                });





            },




                      child: const Text('continue'),
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        primary: const Color(0xFFf38223),
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1)),
                      ),
                    ),
                    SizedBox(width: 15,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel'),
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        primary: const Color(0xFFfeb915),
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1)),
                      ),
                    ),
                  ],
                ),
              ],
            );
          });
        });
  }
  Future<void> noAmountDialog(BuildContext context) async {

    return await showDialog(context: context,
        builder: (context) {

          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              // shape: CircleBorder(),
              content: Form(
                  //key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:65 ),
                        child: Text("No Amount entered"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:65 ),
                        child: Text("Please enter amount"),
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        ],
                      )
                    ],
                  )),
              actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    SizedBox(width: 15,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel'),
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        primary: const Color(0xFFfeb915),
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1)),
                      ),
                    ),
                  ],
                ),
              ],
            );
          });
        });
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("This voucher is used already"),
          content: new Text("Please check you Voucher Id "),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  // void noAmountDialog() {
  //   // flutter defined function
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       // return object of type Dialog
  //       return AlertDialog(
  //         title: new Text("NO Amount Entered"),
  //         content: new Text("Please Enter Amount "),
  //         actions: <Widget>[
  //           // usually buttons at the bottom of the dialog
  //           new FlatButton(
  //             child: new Text("Close"),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
//
}
