import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/Hardness/ManualRW/Rockwell.dart';
import 'package:mma_mse/equipment/CharpyImpact/Charpy.dart';
import 'package:mma_mse/equipment/UTM/universal_tensile_machine_MainPage.dart';

Map<String, Widget> qr_data = {
  "JHE1MLUTM001": tensile_test(),
  "JHE1MLRWM001": hardness_test(),
  "JHE1MLCIT001": charpy_test()
};
