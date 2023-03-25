// ignore_for_file: camel_case_types, prefer_const_constructors, non_constant_identifier_names, curly_braces_in_flow_control_structures, unnecessary_import, unused_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/playinglist.dart';

class grid extends StatefulWidget {
  grid({super.key});

  @override
  State<grid> createState() => _gridState();
}

class _gridState extends State<grid> {
  @override
  Widget build(BuildContext context) {
    return Consumer<playinglist>(
      builder: (context, value, child) => SizedBox(
        width: double.infinity,
        height: 400,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: 9,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                   value.update(index);
                   value.wins(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                      color: Colors.grey,
                      width: 1.4,
                    )),
                    child: Center(
                      child: Text(
                        value.plays[index].toString().toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
