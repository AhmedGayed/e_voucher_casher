//
// import 'dart:io';
//
// import 'package:e_voucher/Classes/const.dart';
// import 'package:e_voucher/Login/screen/login.dart';
// import 'package:http/http.dart'as http;
//
//
// class getVocher  {
//   final queryParameters = {
//     'voucherid': 1,
//
//   };
//
//   Future getVoucher(int voucherid,String tokenG) async{
//     final uri =
//     Uri.http('62.68.249.222', '/EVOUCHERHUB/api/Voucher/GetVoucherDetails', queryParameters);
//
//     // String url = "http://62.68.249.222/EVOUCHERHUB/api/Voucher/GetVoucherDetails";
//
//     var response = await http.get(uri, headers: {
//       AppConstants.KEY_ACCESS_TOKEN : tokenG,
//     });
//
//
//     if (response.statusCode == 200){
//       print("voucherrrrrrrrrr");
//
//
//
//     }else{
//       print("nidffsfafsfffw");
//     }
//
//   }
//
// }
