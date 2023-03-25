// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, camel_case_types, avoid_unnecessary_containers, unnecessary_import, unused_import
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/buttons.dart';

class win_dialog extends StatefulWidget {
  final String x;
  win_dialog({super.key, required this.x});

  @override
  State<win_dialog> createState() => _win_dialogState();
}

class _win_dialogState extends State<win_dialog> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: CupertinoAlertDialog(
        title: Text(
          widget.x != '@' ? '${widget.x} wins !' : 'Its a Draw',
          style: TextStyle(
              color: CupertinoColors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        content: Text(
          widget.x != '@' ? "Congrats for Winning" : "Try Again",
          style: TextStyle(
              color: CupertinoColors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
