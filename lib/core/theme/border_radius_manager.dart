import 'package:flutter/material.dart';

abstract class BorderRadiusManager {
  static const BorderRadius circular5 = BorderRadius.all(Radius.circular(5));
  static const BorderRadius circular10 = BorderRadius.all(Radius.circular(10));
  static const BorderRadius circular12 = BorderRadius.all(Radius.circular(12));
  static const BorderRadius circular15 = BorderRadius.all(Radius.circular(15));
  static const BorderRadius circular20 = BorderRadius.all(Radius.circular(20));
  static const BorderRadius circular30 = BorderRadius.all(Radius.circular(30));
  static const BorderRadius circular32 = BorderRadius.all(Radius.circular(32));

  static const BorderRadius onlyBottom15 = BorderRadius.only(
      bottomRight: Radius.circular(15), bottomLeft: Radius.circular(15));

  static const BorderRadius onlyTop15 = BorderRadius.only(
      topRight: Radius.circular(15), topLeft: Radius.circular(15));

  static const BorderRadius onlyTop12 = BorderRadius.only(
      topRight: Radius.circular(12), topLeft: Radius.circular(12));

  static const BorderRadius onlyTop20 = BorderRadius.only(
      topRight: Radius.circular(20), topLeft: Radius.circular(20));

  static const BorderRadius onlyTop30 = BorderRadius.only(
      topRight: Radius.circular(30), topLeft: Radius.circular(30));

  static const BorderRadius onlyBottom30 = BorderRadius.only(
      bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30));

  static const BorderRadius onlyTop40 = BorderRadius.only(
      topRight: Radius.circular(40), topLeft: Radius.circular(40));

  static BorderRadiusDirectional onlyEnd20 =
      const BorderRadiusDirectional.only(topEnd: Radius.circular(20));

  static const BorderRadius circularFull =
      BorderRadius.all(Radius.circular(100));
}
