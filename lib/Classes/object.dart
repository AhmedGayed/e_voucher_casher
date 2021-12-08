class LoginObject{
  double? ID ;
  String? FULLNAME  ;
  String? USERNAME ;
  String? EMAIL ;
  String? PASSWORD ;
  String? BIRTHDATE ;
  String? GENDER ;
  double? STOREBRANCHIDFK ;
  double? CREATEUSERIDFK ;
  String? CREATEDATE ;
  double? MODUSERIDFK ;
  String? MODDATE ;
  String? ACTIVE;


  LoginObject({
    this.ID,
    this.FULLNAME,
    this.USERNAME,
    this.EMAIL,
    this.PASSWORD,
    this.BIRTHDATE,
    this.GENDER,
    this.STOREBRANCHIDFK,
    this.CREATEUSERIDFK,
    this.CREATEDATE,
    this.MODUSERIDFK,
    this.MODDATE,
    this.ACTIVE});


  Map<String, dynamic> toJson() =>
      {
        //  'ID': ID,
        //  'FULLNAME': FULLNAME,
        'USERNAME': USERNAME,
        // 'EMAIL': EMAIL,
        'PASSWORD': PASSWORD,
        /* 'BIRTHDATE': BIRTHDATE,
        'GENDER': GENDER,
        'STOREBRANCHIDFK': STOREBRANCHIDFK,
        'CREATEUSERIDFK': CREATEUSERIDFK,
        'CREATEDATE': CREATEDATE,
        'MODUSERIDFK': MODUSERIDFK,
        'MODUSERIDFK': MODUSERIDFK,
        'MODDATE': MODDATE,
        'ACTIVE': ACTIVE,*/
      };
/* factory LoginObject.fromJson(Map<String,dynamic> json){

    LoginObject loginObject = LoginObject();
    loginObject.ID = json['ID'];
    loginObject.FULLNAME = json['FULLNAME'];
    loginObject.USERNAME = json['USERNAME'];
    loginObject.EMAIL = json['EMAIL'];
    loginObject.PASSWORD = json['PASSWORD'];
    loginObject.BIRTHDATE = json['BIRTHDATE'];
    loginObject.GENDER = json['GENDER'];
    loginObject.STOREBRANCHIDFK = json['STOREBRANCHIDFK'];
    loginObject.CREATEUSERIDFK = json['CREATEUSERIDFK'];
    loginObject.CREATEDATE = json['CREATEDATE'];
    loginObject.MODUSERIDFK = json['MODUSERIDFK'];
    loginObject.MODDATE = json['MODDATE'];
    loginObject.ACTIVE = json['ACTIVE'];

    return loginObject;
  }*/


}