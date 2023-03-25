import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/home.dart';
import 'package:tic_tac_toe/playinglist.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => playinglist(),)],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tic Tac Toe ',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const home(),
      ),
    );
  }
}
