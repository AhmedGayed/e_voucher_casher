import 'dart:convert';

import 'package:e_voucher/Classes/user__model.dart';
import 'package:e_voucher/Classes/user_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  BuildContext? context;

  SessionManager(this.context);

  saveToken(String token) async {
    print("sucess");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("token", token);
  }

  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("token");
  }

  saveUserModel(User model) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String encodedData = jsonEncode(model.toJson());
    print("listssssss"+encodedData);
    prefs.setString("User", encodedData);
  }

  Future<User?> getUserModel() async{
    User user = new User();
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? data = sharedPreferences.getString("User");
    if(data!=null) {
      user = User.fromJson(jsonDecode(data));
      print("user is " + user.StoreBranch!);
    }
    return user ;


  }
//  String encodedData = jsonEncode(list.map((e) => e.toJson()).toList());
//     print("listssssss"+encodedData);
//     sharedPreferences.setString("details", encodedData);

  saveUserDetails(UserDetails modeld) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String encodedData = jsonEncode(modeld.toJson());
    print("list"+encodedData);
    prefs.setString("UserD", encodedData);
  }

  Future<UserDetails?> getUserDetails( UserDetails? userDetails) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    UserDetails userD = new UserDetails();
    String? date = sharedPreferences.getString("UserD");
    if(date!=null) {
      print("data is " + date);
       userD= UserDetails.fromJson(jsonDecode(date));
      print("user is "+userD.USERNAME!);


    }

    return userD ;


  }


}