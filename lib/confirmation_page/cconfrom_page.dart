import 'dart:convert';

import 'package:e_voucher/Classes/const.dart';
import 'package:e_voucher/Classes/save.dart';
import 'package:e_voucher/Classes/user__model.dart';
import 'package:e_voucher/Classes/user_details.dart';
import 'package:e_voucher/Classes/vouchers.dart';
import 'package:e_voucher/Drawar/widget/navigation_drawer_widget.dart';
import 'package:e_voucher/Home/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

import '../progress_dialog.dart';
import '../shared_text.dart';

class confrmationPage extends StatefulWidget {
  String pageTitle;
  String amount;
  vouchers voucherObject;

  confrmationPage({Key? key, required this.pageTitle, required this.amount,required this.voucherObject})
      : super(key: key);


  @override
  _confrmationPageState createState() => _confrmationPageState();
}

class _confrmationPageState extends State<confrmationPage> {
 // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  User userModel = User();
  String storeName="";
  String fullname= "";
  UserDetails userDetails = UserDetails();
  String Fullname="";
  _normalProgress(context) async {
    /// Create progress dialog
    ProgressDialog pd = ProgressDialog(context: context);

    /// Set options
    /// Max and msg required
    pd.show(
      max: 10,
      msg: 'Conforming Action....',
      progressBgColor: Colors.transparent,
    );
    // for (int i = 0; i <= 10; i++) {
    //   /// You don't need to update state, just pass the value.
    //   /// Only value required
    //   pd.update(value: i);
    //   i++;
    await Future.delayed(Duration(milliseconds: 100));
    // }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFdfedfd),
          iconTheme: IconThemeData(color: Color(0xFF657382)),
          title: Text(
              widget.pageTitle, style: TextStyle(color: Color(0xFF657382))),

        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFf3f4f4),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
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
              padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: Container(
               // height: 400,
                color: Colors.transparent,
                width: double.infinity,
                child: Stack(children: [
                  Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    // height: 400,
                    width: double.infinity,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                    const Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Text("Transaction Amount",
                        style:TextStyle(
                        fontSize: 25,
                        color: Color(0xFF858585),
                    ),),
              ),
              const Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  " ${widget.amount}", style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF868686),
                ),),
              ),


                          Container(
                            // width: double.infinity,
                            // height: 140,
                            margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
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
                                                widget.voucherObject.NAMEDVALUE.toString(),
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
                                        height: 100,
                                        width: 100,
                                        child:  Align(
                                            alignment: Alignment.topRight,
                                            child: Text(widget.voucherObject.VOUCHERID.toString()
                                              ,style:
                                            TextStyle(fontSize: 20, color: Color(0xffdd8a3e)),)
                                        ),
                                      ),

                                      /*   Container(height: 80 ,
                             child: VerticalDivider(color: Colors.white,),),*/

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
                    children: [
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
    onPressed:()  async {
    await showInformationDialog(context);
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
    ])
    ,
    )
    ,
    )
    ,
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
    sessionManager.getUserDetails(userDetails).then((value) {
      if(value!=null) {
        setState(() {
          userDetails = value;
          //fullname = userDetails.FULLNAME!;
        });

      }
    }) ;

  }
  useVoucher(int? VoucherId,int? UserId,int? BranchId,int? BranchUserId,int? UsedValue,String tokenV)async{
    final parametrs = {
      'VoucherId': VoucherId.toString(),
      'UserId': UserId.toString(),
      'BranchId': BranchId.toString(),
      'BranchUserId': BranchUserId.toString(),
      'UsedValue': UsedValue.toString(),


    };
    final uri =
    Uri.http(AppConstants.IP, AppConstants.ROAPI+'Voucher/UseVoucher',
        parametrs);

    // String url = "http://62.68.249.222/EVOUCHERHUB/api/Voucher/GetVoucherDetails";

    var response = await http.get(uri, headers: {
      AppConstants.KEY_ACCESS_TOKEN: tokenV,
    });
    if(response.statusCode==200){
      print("susses");
      String result = response.body;
      print("result is "+result);
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>home()));

    }else if (response.statusCode==401){
      print("401");
      GetTokenN();
    }else{
      print(response.body);
    }

  }

  Future GetTokenN() async {
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
      useVoucher(AppConstants.vousherID,AppConstants.userID,AppConstants.branchID,AppConstants.BranchUserId,int.parse(widget.amount),allToken);

    }
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
                 // key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:65 ),
                        child: Text("Transaction Amount"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:0,top: 10 ),
                        child: Text(
                          " ${widget.amount}", style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFF868686),
                        ),),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:65,top: 10 ),
                            child: Text(
                              "Voucher Id is :", style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF868686),
                            ),),
                          ),

                          Padding(
                              padding: const EdgeInsets.only(right:5,top: 10 ),
                              child: Text(widget.voucherObject.VOUCHERID.toString()
                                ,style:
                                TextStyle(fontSize: 20, color: Color(0xffdd8a3e)),)
                          ),

                        ],
                      ),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:65,top: 10 ),
                            child: Text(
                              "value:", style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF868686),
                            ),),
                          ),

                          Padding(
                              padding: const EdgeInsets.only(right:5,top: 10 ),
                              child: Text(widget.voucherObject.NAMEDVALUE.toString()
                                ,style:
                                TextStyle(fontSize: 20, color: Color(0xffdd8a3e)),)
                          ),

                        ],
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
                      onPressed:  () {

                        _normalProgress(context);
                        SessionManager sessionManager = SessionManager(context);
                        sessionManager.getToken().then((value) {
                          if (value != null) {
                            useVoucher(AppConstants.vousherID,AppConstants.userID,AppConstants.branchID,AppConstants.BranchUserId,int.parse(widget.amount),value);
                          }

                        });

                      },



                      child: const Text('Confirm '),
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



}
