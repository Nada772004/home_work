import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';


abstract class AppTextStyles {

  //H1 style
  static TextStyle medium24({Color? color}){
    return TextStyle(
      fontFamily: 'Gilroy',
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: color,
      letterSpacing: 0,

    );
  }
  //H2 style
  static TextStyle medium18({Color? color}){
    return TextStyle(
      fontFamily: 'Gilroy',
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: color ?? Colors.white,
      letterSpacing: 0,

    );
  }

  //H3 style
  static TextStyle regular16({Color? color}){
    return TextStyle(
      fontFamily: 'Gilroy',
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: color ?? Colors.white,
      letterSpacing: 0,

    );
  }

  //H4 style
  static TextStyle regular12({Color? color}){
    return TextStyle(
      fontFamily: 'Gilroy',
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: color,
      letterSpacing: 0,

    );
  }

  static TextStyle medium16({Color? color}){
    return TextStyle(
      fontFamily: 'Gilroy',
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: color ?? Colors.white,
      letterSpacing: 0,

    );
  }


}