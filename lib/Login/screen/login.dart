
import 'dart:math';

import 'package:e_voucher/Classes/login_api.dart';
import 'package:e_voucher/Classes/save.dart';
import 'package:e_voucher/Home/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../progress_dialog.dart';
import '../../shared_text.dart';
String ?token;
var  gtoken;
class loginn extends StatefulWidget {
  const loginn({Key? key}) : super(key: key);

  @override
  _loginnState createState() => _loginnState();
}
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
bool isShown = true;
bool rememberpwd = false;
get bottomNavigationBar => null;
TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();






Future<dynamic> tokenlogin() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.getString("tokenKey") != null){
      token = (prefs.getString("tokenKey"));
    }
    else{
      token = "no token";
    }
  return token;
}
class _loginnState extends State<loginn> {
  _normalProgress(context) async {
    /// Create progress dialog
    ProgressDialog pd = ProgressDialog(context: context);

    /// Set options
    /// Max and msg required
    pd.show(
      max: 10,
      msg: 'Loading.....',
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


  // _customProgress(BuildContext context) async {
  //   ProgressDialog pd = ProgressDialog(context);
  //
  //   /// show the state of preparation first.
  //   /*pd.show(
  //       max: 100,
  //       msg: 'Preparing Download...',
  //       progressType: ProgressType.valuable,
  //       backgroundColor: Color(0xff212121),
  //       progressValueColor: Color(0xff3550B4),
  //       progressBgColor: Colors.white70,
  //       msgColor: Colors.white,
  //       valueColor: Colors.white);*/
  //   pd.show();

  //   /// Added to test late loading starts
  //   await Future.delayed(Duration(milliseconds: 3000));
  //   for (int i = 0; i <= 100; i++) {
  //     /// You can indicate here that the download has started.
  //     // pd.update(value: i, msg: 'File Downloading...');
  //     // i++;
  //     await Future.delayed(Duration(milliseconds: 100));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(
      children: [
        Container(
          color: const Color(0xffF8F8F9),
          width: double.infinity,
          height: double.infinity,
        ),
        CustomScrollView(
          slivers: [
            SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    const Image(
                      image: AssetImage("assest/Evoucher-Cashier-logo.png"),
                      width: 200,
                      height: 200,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: username,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "This Field Can Not Be Empty \n Please Enter You UserName";
                                }
                              },
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'User Name  ',
                                labelText: 'User Name',
                                prefixIcon: Icon(Icons.mail),

                                // icon: Icon(Icons.mail),
                                suffixIcon: username.text.isEmpty
                                    ? Container(width: 0)
                                    : IconButton(
                                        icon: const Icon(Icons.close),
                                        onPressed: () =>
                                            username.clear(),
                                      ),
                                border: const OutlineInputBorder(),
                                enabledBorder: const OutlineInputBorder(),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Color(0xff848484),
                                  width: 1,
                                )),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,

                              // autofocus: true,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: TextFormField(
                              style: TextStyle(color: Colors.black),
                              obscureText: isShown,
                              controller: password,
                                    validator: (value){
                                          if (value!.isEmpty) {
                                            return "ENTER Your Password";
                                          }
                                         },
                              decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  enabledBorder: const OutlineInputBorder(),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff848484),
                                        width: 1,
                                  )),
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        isShown = !isShown;
                                      });
                                    },
                                    child: Icon(isShown
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                  ),
                                  labelText: 'password',
                                  prefixIcon: const Icon(
                                    Icons.lock,
                                  ),
                                  fillColor: Colors.white,
                                  filled: true),
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: const Text(
                          "Forgot Password ?",
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ElevatedButton(
                              onPressed: () {

                                _normalProgress(context);


                                // _customProgress(context);
                                // GetToken TF = new GetToken();
                                // TF.GetTokenN();
                                SessionManager sessionManager = new SessionManager(context);
                                sessionManager.getToken().then((value){
                                  loginF LF = new loginF();
                                  if (value!=null){
                                    LF.loginFunction(username.text,password.text,value,context);
                                  }else{
                                    LF.loginFunction(username.text,password.text,"",context);
                                  }
                                });

                                if (_formKey.currentState!.validate()) {
                                  SharedText.userName =
                                      username.text.toString();
                                  //Navigator.of(context).push(
                                  // MaterialPageRoute(
                                  // builder: (ctx) => home()));
                                }



                              },
                            child: Text('LOGIN',style: const TextStyle(fontWeight: FontWeight.bold,fontSize:25),),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFFfdb913),
                                textStyle:
                                TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                minimumSize: Size(double.infinity, 45)),

                          ),
                        ),


                      ],
                    ),
                    SizedBox(height: 200,)

                  ],
                )),
          ],
        )
      ],
    )));
  }
}


