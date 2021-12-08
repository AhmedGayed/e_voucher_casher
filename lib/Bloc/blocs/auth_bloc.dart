// import 'package:e_voucher/blocs/auth_events.dart';
// import 'package:e_voucher/blocs/auth_state.dart';
// import 'package:e_voucher/rep/auth_repo.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class AuthBloc extends Bloc<AuthEvents,AuthState>{
//   AuthRepository repository;
//   AuthBloc(AuthState initialState,this.repository) : super(initialState);
//
//   @override
//   Stream<AuthState> mapEventToState(AuthEvents event)async*{
//     var pref = await SharedPreferences.getInstance();
//     if(event is startEvent){
//       yield LoginInitState();
//     }else if (event is LoginBtnPressed){
//       yield LoginLoadingState();
//       var data = await repository.llogin(event.username, event.password);
//       if (data ["token"=="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJDYXNoZXIiLCJ1c2VySWQiOiIyMiIsImZ1bGxOYW1lIjoiQ2FzaGVyIiwianRpIjoiZTM4NDQ5Y2UtZjI1Yy00M2Q5LWI1ZjctYmQ2YjgxNmUxNGZjIiwicm9sZSI6IjQiLCJleHAiOjE2MzgyNzM4MDcsImlzcyI6Imh0dHBzOi8vbG9jYWxob3N0OjUwMDEvIiwiYXVkIjoiaHR0cHM6Ly9sb2NhbGhvc3Q6NTAwMS8ifQ.0D1xWyrdA9PIkggV6_8h4Htc19RumRdaKUii8Zodzqo"]){
//         pref.setString("token", data["token"]);
//         yield UserLoginScssState();
//       }
//
//     }
//
//   }
//
// }