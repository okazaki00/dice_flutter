import 'dart:collection';

import 'package:dice/dice.dart';
import 'dart:math' as math;
import 'package:flutter/cupertino.dart';

class DiceViewModel extends ChangeNotifier {
  final List<Dice> _logList = [];
  UnmodifiableListView<Dice> get logList => UnmodifiableListView(_logList);

  int rollDice(Dice dice) {
    var rand = math.Random();

    var result = 0;
    for (var i=0; i<dice.num; i++) {
      result += rand.nextInt(dice.value) + 1;
    }

    _logList.add(dice);
    notifyListeners();

    return result;
  }
}