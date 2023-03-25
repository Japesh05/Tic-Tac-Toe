// ignore_for_file: camel_case_types, non_constant_identifier_names, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/win_dialog.dart';

class playinglist extends ChangeNotifier {

  List plays = ['', '', '', '', '', '', '', '', ''];
  bool play_o = true, play_x = false;
  int score_o = 0, score_x = 0, score_d = 0;


  // * update the list and the player turns
  update(index) {
    if (plays[index] == '') {
      if (play_o) {
        plays[index] = 'O';
      } else
        plays[index] = 'X';
      play_o = !play_o;
      play_x = !play_x;
    }
    notifyListeners();
  }

  // * clear the play list
  void reset() {
    plays = ['', '', '', '', '', '', '', '', ''];
    notifyListeners();
  }

  //* check who wins
  wins(context) {
    int filledBoxes = 0;
    for (int i = 0; i < plays.length; i++) if (plays[i] != '') filledBoxes++;
    if (plays[0] == plays[1] && plays[0] == plays[2] && plays[0] != '') {
      wining(plays[0], context);
    } else if (plays[3] == plays[4] && plays[3] == plays[5] && plays[3] != '') {
      wining(plays[3], context);
    } else if (plays[6] == plays[7] && plays[6] == plays[8] && plays[6] != '') {
      wining(plays[6], context);
    }

    // Checking Column
    else if (plays[0] == plays[3] && plays[0] == plays[6] && plays[0] != '') {
      wining(plays[0], context);
    } else if (plays[1] == plays[4] && plays[1] == plays[7] && plays[1] != '') {
      wining(plays[1], context);
    } else if (plays[2] == plays[5] && plays[2] == plays[8] && plays[2] != '') {
      wining(plays[2], context);
    }

    // Checking Diagonal
    else if (plays[0] == plays[4] && plays[0] == plays[8] && plays[0] != '') {
      wining(plays[0], context);
    } else if (plays[2] == plays[4] && plays[2] == plays[6] && plays[2] != '') {
      wining(plays[2], context);
    } else if (filledBoxes == 9) {
      wining('@', context);
    }
  }

  //* showing winning message
  wining(char, context) {
    showDialog(
      barrierColor: Colors.grey.withOpacity(0.8),
      context: context,
      builder: (context) {
        if (char == 'O') {
          score_o++;
        } else if (char == 'X') {
          score_x++;
        } else {
          score_d++;
        }
        return win_dialog(x: char);
      },
    );
  }

  //* clear scores
  clear() {
    score_d = score_o = score_x = 0;
    notifyListeners();
  }
}
