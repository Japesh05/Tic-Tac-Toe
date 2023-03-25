// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/playinglist.dart';

class buttons extends StatefulWidget {
  final String text;
  final bool clear;
  const buttons({super.key, required this.text, required this.clear});

  @override
  State<buttons> createState() => _buttonsState();
}

class _buttonsState extends State<buttons> {

  @override
  Widget build(BuildContext context) {
    return Consumer<playinglist>(
      builder:(context, value, child) => SizedBox(
      width: 150,
      height: 60,
      child: ElevatedButton(
          onPressed: () => widget.clear ? value.clear() : value.reset(),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
          child: Text(widget.text,
              style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold))),
      ),
    );
  }
}