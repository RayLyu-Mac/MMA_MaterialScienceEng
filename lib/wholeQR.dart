import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor1/mech_lab.dart';
import 'package:mma_mse/floors/floor1/room129.dart';
import 'package:mma_mse/floors/floor2/equbLayout/room239.dart';
import 'package:mma_mse/floors/floor2/roomMain/240.dart';
import 'package:mma_mse/floors/floor2/roomMain/242.dart';
import 'package:mma_mse/floors/floor2/roomMain/244.dart';
import 'package:mma_mse/floors/floor2/roomMain/245.dart';
import 'package:mma_mse/floors/floor2/roomMain/246A.dart';

Map<String, Widget> qr_pageTo = {
  "Room 242": room242Main(),
  "Room 240": room240(),
  "Room 239A": room239(),
  "Room 244": room244Main(),
  "Room 245": room245Main(),
  "Room 239": room239(),
  "Room 246A": room246AMain(),
  "Room 134": Mech_lab(),
  "Room 129": Room129()
};
