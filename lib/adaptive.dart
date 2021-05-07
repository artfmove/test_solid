import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

class Adaptive {
  Widget appBar(String title) => Platform.isAndroid
      ? AppBar(
          title: Text(title),
        )
      : CupertinoNavigationBar(
          middle: Text(title),
        );
}
