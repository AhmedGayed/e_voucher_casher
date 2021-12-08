import 'dart:convert';
import 'package:e_voucher/Classes/const.dart';
import 'package:e_voucher/Classes/save.dart';
import 'package:e_voucher/Classes/user_details.dart';
import 'package:e_voucher/Classes/user_model_old.dart';
import 'package:e_voucher/Classes/user_roles.dart';
import 'package:e_voucher/Home/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'user__model.dart';
import 'object.dart';
class loginF{
  Future loginFunction(String userName,String password,String tokenG , BuildContext context) async{

    String url = AppConstants.API+"Account";

    LoginObject logins = LoginObject();
    logins.USERNAME = userName;
    logins.PASSWORD =password;

    var json = jsonEncode(logins.toJson());

    print("hello"+tokenG);
    var response = await http.post(Uri.parse(url),body: json,
        headers:  {
          AppConstants.KEY_ACCESS_TOKEN : tokenG,
          "content-type" : "application/json",
          "accept" : "application/json",
        });


    if(response.statusCode==200){
      print("here is login");
      // print(response.body);
      User user = new User();
      /*user = User.fromJson(jsonDecode(response.body));
    String? token = user.token;*/
      Map<String, dynamic> data = jsonDecode(response.body);
      //  print(data['token']);
      //  print(data['userDetails']['FULLNAME']);
      user = User.fromJson(jsonDecode(response.body));
      SessionManager sessionManager = SessionManager(context);
      sessionManager.saveUserModel(user);
      //print(user.token);
      UserDetails userDetails = new UserDetails();
      userDetails = UserDetails.fromJson(data['userDetails']);
      AppConstants.branchID=userDetails.STOREBRANCHIDFK!;
      AppConstants.BranchUserId=userDetails.ID!;

      // print("ooooooooooooooooooo"+userDetails.ID.toString());
      // sessionManager.getUserDetails(userDetails);
      List<UserRoles>? userRoles = userDetails.USERROLES;
      if(userRoles!=null){
        print(userRoles[0].ROLEIDFK);
      }
      Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
    }
    else if(response.statusCode== 401){
      GetToken TF = new GetToken();
      TF.GetTokenN(userName,password,context);
      print("UNAaaaaaaaaaaaaaaghggtut");
    }


  }

}
class GetToken  {

  Future GetTokenN(String userName,String passWord,BuildContext context) async{

    String url = AppConstants.API+"Token";

    var response = await http.get(Uri.parse(url),
        headers:  {
          AppConstants.usernameHeader : AppConstants.UserNameToken,
          AppConstants.passwordHeader:AppConstants.PasswordToken,
          "content-type" : "application/json",
          "accept" : "application/json",
        });

    if (response.statusCode == 200){
      print("here is token");



      final body = json.decode(response.body);
      String allToken = AppConstants.Bearer +body;
      print(allToken);
      SessionManager sessionManager = new SessionManager(context);
      sessionManager.saveToken(allToken);
       loginF LF = new loginF();
       LF.loginFunction(userName, passWord,allToken, context);



    }

  }

  }














