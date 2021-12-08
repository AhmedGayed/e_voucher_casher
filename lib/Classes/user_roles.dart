class UserRoles {
  int? ROLEIDFK;

  UserRoles({this.ROLEIDFK});

  factory UserRoles.fromJson(Map<String, dynamic> json){
    UserRoles userRoles = UserRoles();
    userRoles.ROLEIDFK = json['ROLEIDFK'];

    return userRoles;
  }
}