library bonhomme;

import 'dart:html';
import 'package:game/game.dart';

main() {
  new Board(querySelector('#canvas'), new Trees(64)).draw();
}