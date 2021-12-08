import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  String? value;
  Function()? onPressed;
  bool? isPressed;

  CommonButton({Key? key, this.value, this.onPressed, this.isPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey,
              //     offset: Offset(0.0, 1.0), //(x,y)
              //     blurRadius: 6.0,
              //   ),
              // ],
              color: isPressed! ? Color(0xfffdb913) : Colors.white,
              border: Border.all(
                color: isPressed! ? Color(0xfffdb913) : Color(0xffdfdede),
              ),
              borderRadius: BorderRadius.circular(3)),
          child: Text(
            value!,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isPressed! ? Colors.white : Color(0xff657382),
              fontSize: 17,),

          ),
        ),
      ),
    );

//
//
//
//
//
//     Expanded(
//       child: Padding(
//         padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
//         child: OutlinedButton(
//
//           onPressed: onPressed,
//           child: Text(
//             value!,
//             style: TextStyle(
//                 fontSize: 20,
//                 color:isPressed!
//                     ? Colors.white
//                     :Color(0xff657382),
//                 fontWeight: FontWeight.w400),
//           ),
//
//           style: ElevatedButton.styleFrom(
//               primary: isPressed!
//                   ? Color(0xfffdb913)
//                   :,
//               textStyle:  TextStyle(
//                   fontSize: 20,
//                   color:isPressed!
//                       ? Colors.white
//                       :Color(0xff657382),
//                   fontWeight: FontWeight.w400),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(3)),
//               side:const BorderSide(color: Colors.grey, width: 1.0),
//               minimumSize: const Size(90, 40)),
//         ),
//       ),
//     );
//   }
// }
//return  Expanded(
//      child: InkWell(
//        onTap: onPress,
//        child: Container(
//          padding: EdgeInsets.symmetric(vertical: 5),
//          decoration: BoxDecoration(
//            color: isPressed!?Color(0xfffdb913):Colors.white,
//              border: Border.all(
//                color: isPressed!?Color(0xfffdb913):Color(0xffdfdede),
//              ),
//              borderRadius: BorderRadius.circular(3)),
//          child: Text(
//            value!,
//            textAlign: TextAlign.center,
//             style: TextStyle(color:isPressed!?Colors.white:Color(0xff657382), fontSize: 17,),
//
//          ),
//        ),
//      ),
//    );
  }
}