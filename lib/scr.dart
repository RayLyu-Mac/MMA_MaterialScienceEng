import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_scraper/web_scraper.dart';

void main() => runApp(WebScraperApp());

class WebScraperApp extends StatefulWidget {
  @override
  _WebScraperAppState createState() => _WebScraperAppState();
}

class _WebScraperAppState extends State<WebScraperApp> {
  // initialize WebScraper by passing base url of website
  final webScraper = WebScraper('https://www.eng.mcmaster.ca');

  // Response of getElement is always List<Map<String, dynamic>>
  List<Map<String, dynamic>> productNames = [];
  String productDescriptions = '';

  void fetchProducts() async {
    // Loads web page and downloads into local state of library
    if (await webScraper.loadWebPage(
        '/materials/programs/course-listing#technical-electives')) {
      setState(() {
        // getElement takes the address of html tag/element and attributes you want to scrap from website
        // it will return the attributes in the same order passed
        productNames = webScraper.getElement('.view-filters', ['title']);
        productDescriptions = webScraper.getPageContent();
        print(productNames);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    // Requesting to fetch before UI drawing starts
    fetchProducts();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Product Catalog'),
          ),
          body: SafeArea(
              child: productNames == null
                  ? Center(
                      child:
                          CircularProgressIndicator(), // Loads Circular Loading Animation
                    )
                  : Column(
                      children: [
                        for (var i = 0; i < productNames.length; i++)
                          Text(productNames[i]['title'])
                      ],
                    ))),
    );
  }
}
