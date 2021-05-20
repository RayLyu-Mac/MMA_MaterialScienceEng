import 'package:flutter/material.dart';
import 'userModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:core';
import 'dart:convert';
import 'dart:io';

String uri = "https://epprd.mcmaster.ca/psp/prepprd/?cmd=login";
void send() async {
  var form = <String, String>{
    'userid': 'lyuz11',
    'pwd': 'Ss182060317!!',
  };
  var res = await http.post(
    Uri.parse(uri),
    body: form,
  );
  var jsonResponse = jsonDecode(res.body);
  print(res.statusCode);
  print(jsonResponse);
}
