// import 'dart:async';
//
// import 'package:e_voucher/Login/screen/login.dart';
// import 'package:flutter/material.dart';
//
//
// class SplashScreen extends StatefulWidget {
//   SplashScreen({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   bool _isVisible = false;
//
//   _SplashScreenState(){
//
//     Timer(const Duration(milliseconds: 5000), (){
//       setState(() {
//         Navigator.of(context).pushAndRemoveUntil(
//         MaterialPageRoute(builder: (context) => loginn()), (route) => false);
//       });
//     });
//
//     Timer(
//       Duration(milliseconds: 10),(){
//         setState(() {
//           _isVisible = true; // Now it is showing fade effect and navigating to Login page
//         });
//       }
//     );
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Theme.of(context).accentColor, Theme.of(context).primaryColor],
//           begin: const FractionalOffset(0, 0),
//           end: const FractionalOffset(1.0, 0.0),
//           stops: [0.0, 1.0],
//           tileMode: TileMode.clamp,
//         ),
//       ),
//       child: AnimatedOpacity(
//         opacity: _isVisible ? 1.0 : 0,
//         duration: Duration(milliseconds: 1200),
//         child: Center(
//           child: Container(
//             height: 140.0,
//             width: 140.0,
//             child: const Center(
//               child: Image(
//                 image: AssetImage("assest/Evoucher-Cashier-logo.png"),
//                 width: 200,
//                 height: 200,
//               ),
//             ),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.3),
//                   blurRadius: 2.0,
//                   offset: Offset(5.0, 3.0),
//                   spreadRadius: 2.0,
//                 )
//               ]
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'dart:async';
import 'package:e_voucher/Login/screen/login.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const loginn())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf3f4f4),
      body: Center(
        child:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image(
                  image: AssetImage("assest/Evoucher-Cashier-logo.png"),
                  // width: 200,
                  // height: 200,
                ),
        ),

      ),
    );
  }
}
