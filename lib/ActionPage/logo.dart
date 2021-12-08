import 'dart:ui';

import 'package:flutter/material.dart';

Widget Logo({required int radius}){
  return
    const CircleAvatar(radius: 24,backgroundImage: AssetImage(
      "assest/nike_logo.png",
    ),
    );

}
