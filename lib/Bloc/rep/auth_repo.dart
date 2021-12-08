// import 'package:http/http.dart' as http;
// import 'dart:convert';
// class AuthRepository {
//   llogin(var username,var password)async{
//     var res =
//     Uri.http('62.68.249.222','/EVOUCHERHUB/api/Account' );
//
//     var response = await http.post(res,headers: {},
//       body:{"username":username,"password":password}
//     );
//     final data  = json.decode(response.body);
//
//     if(data["token"=="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJDYXNoZXIiLCJ1c2VySWQiOiIyMiIsImZ1bGxOYW1lIjoiQ2FzaGVyIiwianRpIjoiZTM4NDQ5Y2UtZjI1Yy00M2Q5LWI1ZjctYmQ2YjgxNmUxNGZjIiwicm9sZSI6IjQiLCJleHAiOjE2MzgyNzM4MDcsImlzcyI6Imh0dHBzOi8vbG9jYWxob3N0OjUwMDEvIiwiYXVkIjoiaHR0cHM6Ly9sb2NhbGhvc3Q6NTAwMS8ifQ.0D1xWyrdA9PIkggV6_8h4Htc19RumRdaKUii8Zodzqo"]){
//           return data;
//     }else{
//       return "auth_prob";
//     }
//
//
//   }
// }