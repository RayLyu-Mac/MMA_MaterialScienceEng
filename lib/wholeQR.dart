import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor1/mech_lab.dart';
import 'package:mma_mse/floors/floor1/room129.dart';
import 'package:mma_mse/floors/floor2/equbLayout/room239.dart';
import 'package:mma_mse/floors/floor2/roomMain/240.dart';
import 'package:mma_mse/floors/floor2/roomMain/242.dart';
import 'package:mma_mse/floors/floor2/roomMain/244.dart';
import 'package:mma_mse/floors/floor2/roomMain/245.dart';
import 'package:mma_mse/floors/floor2/roomMain/246A.dart';
import 'Search/equpment/equb_ava_data.dart';

Map<String, Widget> to = {};
var qrd = HeroType().createSampleList();
createList() {
  to.addAll({"Room 242": room242Main()});
  to.addAll({"Room 240": room240()});
  to.addAll({"Room 239A": room239()});
  to.addAll({"Room 244": room244Main()});
  to.addAll({"Room 245": room245Main()});
  to.addAll({"Room 239": room239()});
  to.addAll({"Room 246A": room246AMain()});
  to.addAll({"Room 134": mech_lab()});
  to.addAll({"Room 129": room129()});
  for (var eq = 0; eq < qrd.length; eq++) {
    to.addAll({qrd[eq].title: qrd[eq].pageTo});
  }
  return to;
}
