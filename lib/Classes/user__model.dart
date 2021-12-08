import 'package:e_voucher/Classes/user_details.dart';

class User{
  UserDetails? userDetails;
  var Logo;
  String? StoreBranch;

  Map<String, dynamic> toJson() =>
      {
        'Logo': Logo,
        'StoreBranch': StoreBranch,

      };

  User({this.Logo, this.StoreBranch,});

  factory User.fromJson(Map<String,dynamic> json){

    User loginObject = User();
    loginObject.Logo = json['Logo'];
    loginObject.StoreBranch = json['StoreBranch'];

    return loginObject;
  }
}