import 'package:flutter/material.dart';

class CommonQuntityButton extends StatelessWidget {
  IconData? iconData;
  Function()? onPressed;

  CommonQuntityButton({Key? key, this.iconData, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Icon(
        iconData!,
        color: Color(0xFF6a747d),
        size: 5,
      ),
      style: ElevatedButton.styleFrom(
          side: BorderSide(color: Colors.grey),
          primary: Color(0xFFf3f5f4),
          elevation: 0,
          textStyle: const TextStyle(fontSize: 2, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
          minimumSize: const Size(20, 40)),
    );
  }
}
