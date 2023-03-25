// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/buttons.dart';
import 'package:tic_tac_toe/grid.dart';
import 'package:tic_tac_toe/playinglist.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<playinglist>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Tic Tac Toe",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text("Player X",
                                style: TextStyle(
                                    color: value.play_x
                                        ? Colors.green
                                        : Colors.white.withOpacity(0.7),
                                    fontSize: value.play_x ? 30 : 25,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 7,
                            ),
                            Text(value.score_x.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text("Player O",
                                style: TextStyle(
                                    color: value.play_o
                                        ? Colors.green
                                        : Colors.white.withOpacity(0.7),
                                    fontSize: value.play_o ? 30 : 25,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 7,
                            ),
                            Text(value.score_o.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text("Draws",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 7,
                            ),
                            Text(value.score_d.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  grid(),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        buttons(text: "Next Round",clear:false),
                        buttons(text: "Clear Scores" , clear: true),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
