import 'package:flutter/material.dart';

double _baseHeight = 640.0;
double _baseWidth = 360.0;

double screenH(double height, BuildContext context){
  return height * MediaQuery.of(context).size.height / _baseHeight;
}

double screenW(double height, BuildContext context){
  return height * MediaQuery.of(context).size.height / _baseWidth;
}