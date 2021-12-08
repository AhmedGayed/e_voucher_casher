
import 'package:e_voucher/Classes/user_roles.dart';
import 'package:e_voucher/Classes/vocher.dart';

import 'balance.dart';

class UserDetails{
  String? FULLNAME;
  int? ID;
  String? USERNAME ;
  String? EMAILl;
  String? PASSWORD;
  String? BIRTHDATE;
  String? GENDER;
  int? STOREBRANCHIDFK;
  double? CREATEUSERIDFK;
  double? CREATEDATE;
  double? MODUSERIDFK;
  String? MODDATE;
  var ACTIVE;
  List<UserRoles>?  USERROLES;
  List<UserBalance>? USERBALANCE;
  List<VoucherClass>? VOUCHER;

  Map<String, dynamic> toJson() =>
      {
        'FULLNAME': FULLNAME,
        'ID': ID,
        'USERNAME': USERNAME,
        'EMAILl': EMAILl,
        'PASSWORD': PASSWORD,
        'BIRTHDATE': BIRTHDATE,
        'GENDER': GENDER,
        'STOREBRANCHIDFK': STOREBRANCHIDFK,
        'CREATEUSERIDFK': CREATEUSERIDFK,
        'MODUSERIDFK': MODUSERIDFK,
        'ACTIVE': ACTIVE,
        'USERROLES': USERROLES,
        'USERBALANCE': USERBALANCE,
        'VOUCHER': VOUCHER,

      };

  UserDetails({this.FULLNAME,this.ID,
    this.USERNAME ,
    this.EMAILl,
    this.PASSWORD,
    this.BIRTHDATE,
    this.GENDER,
    this.STOREBRANCHIDFK,
    this.CREATEUSERIDFK,
    this.CREATEDATE,
    this.MODUSERIDFK,
    this.MODDATE,
    this.USERROLES, this.USERBALANCE,this.VOUCHER});
  factory UserDetails.fromJson(Map<String,dynamic> json){

    UserDetails userDetails = UserDetails();
    userDetails.FULLNAME = json['FULLNAME'];
    userDetails.ID=json['ID'];
    userDetails.USERNAME=json['USERNAME'];
    userDetails.EMAILl=json['EMAILl'];
    userDetails.PASSWORD=json['PASSWORD'];
    userDetails.BIRTHDATE=json['BIRTHDATE'];
    userDetails.GENDER=json['GENDER'];
    userDetails.STOREBRANCHIDFK=json['STOREBRANCHIDFK'];
    userDetails.CREATEUSERIDFK=json['CREATEUSERIDFK'];
    userDetails.CREATEDATE=json['CREATEDATE'];
    userDetails.MODUSERIDFK=json['MODUSERIDFK'];
    userDetails.MODDATE=json['MODDATE'];
    userDetails.USERROLES  = List.from(json['USERROLES']).map((item)=>UserRoles.fromJson(item)).toList();
    // userDetails.USERROLES = json['USERROLES'];
    //userDetails.USERBALANCE = json['USERBALANCE'];
    //userDetails.VOUCHER = json['VOUCHER'];
    return userDetails;
  }


}


