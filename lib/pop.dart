import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_scraper/web_scraper.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

List<String> post = List();

void getData() async {
  final res =
      await http.get(Uri.parse('https://www.instagram.com/macmatlssociety/'));
  dom.Document document = parser.parse(res.body);
  print(document);
}
