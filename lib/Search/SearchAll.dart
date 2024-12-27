import 'dart:collection';
import 'package:mma_mse/Search/tools/tooData.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/Search/Test/Test_Page/test_data.dart';
import 'package:mma_mse/Search/safty/saftyData.dart';
import 'package:mma_mse/Search/equpment/equb_ava_data.dart';
import 'package:mma_mse/floationPanel/PanelMain.dart';

class EqupSearch extends StatefulWidget {
  EqupSearch({Key? key}) : super(key: key);

  @override
  _EqupSearchState createState() => _EqupSearchState();
}

class _EqupSearchState extends State<EqupSearch> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final Map<String, List<dynamic>> _wholeSample = HashMap();

  late double _screenWidth;
  late double _screenHeight;

  List<String> _searchResults = [];
  List<List> _resultProperties = [];
  List<String> _allItems = [];
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    _initializeData();
    _setupSearchListener();
  }

  void _setupSearchListener() {
    _searchController.addListener(() {
      setState(() {
        _isSearching = _searchController.text.isNotEmpty;
        if (!_isSearching) _clearSearch();
      });
    });
  }

  void _initializeData() {
    _addItemsToSample(
      equipmentList,
      (item) => item.title,
      (item) => item.pageTo,
      FontAwesomeIcons.microscope,
      Colors.purple.shade100,
    );

    _addItemsToSample(
      test_data_list,
      (item) => item.title,
      (item) => item.pageTo,
      FontAwesomeIcons.fileContract,
      Colors.lightBlue.shade100,
    );

    _addItemsToSample(
      createToolList,
      (item) => item.name,
      (item) => item.pageTo,
      FontAwesomeIcons.tools,
      Colors.green.shade200,
    );

    final saftyItems = createSaftyList();
    _addMapItemsToSample(
      saftyItems,
      FontAwesomeIcons.skull,
      Colors.red.shade100,
    );

    _allItems.addAll(_wholeSample.keys);
  }

  void _addItemsToSample<T>(
    List<T> items,
    String Function(T) getTitle,
    Widget Function(T) getPage,
    IconData icon,
    Color color,
  ) {
    for (var item in items) {
      _wholeSample[getTitle(item)] = [getPage(item), icon, color];
    }
  }

  void _addMapItemsToSample(
    Map<String, Widget> items,
    IconData icon,
    Color color,
  ) {
    items.forEach((key, value) {
      _wholeSample[key] = [value, icon, color];
    });
  }

  @override
  Widget build(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;
    _screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: const BottomMenu(),
      body: SafeArea(
        child: Column(
          children: [
            _buildSearchBar(),
            Expanded(
              child: _searchResults.isEmpty && !_isSearching
                  ? _buildEmptyState()
                  : _buildSearchResults(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _searchController,
        style: TextStyle(
          fontSize: _screenHeight / 30,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          hintText: "Search for Equipment/Test/Tools...",
          hintStyle: TextStyle(color: Colors.grey.shade600),
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.blue.shade700, width: 2),
          ),
          filled: true,
          fillColor: Colors.grey.shade50,
        ),
        onChanged: _performSearch,
      ),
    );
  }

  Widget _buildSearchResults() {
    return ListView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: _searchResults.length,
      itemBuilder: (context, index) => _buildResultCard(index),
    );
  }

  Widget _buildResultCard(int index) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Icon(
          _resultProperties[index][1] as IconData,
          color: _resultProperties[index][2] as Color,
        ),
        title: Text(
          _searchResults[index],
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        onTap: () => _navigateToPage(index),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/SearchB.png?raw=true",
            height: _screenHeight / 3,
          ),
          const SizedBox(height: 16),
          Text(
            "Start searching...",
            style: TextStyle(
              fontSize: _screenHeight / 40,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }

  void _performSearch(String query) {
    setState(() {
      _searchResults.clear();
      _resultProperties.clear();

      if (query.isEmpty) return;

      for (String item in _allItems) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          _searchResults.add(item);
          _resultProperties.add(_wholeSample[item]!);
        }
      }
    });
  }

  void _clearSearch() {
    _searchResults.clear();
    _resultProperties.clear();
  }

  void _navigateToPage(int index) {
    Navigator.push(
      context,
      PageTransition(
        child: _resultProperties[index][0] as Widget,
        type: PageTransitionType.scale,
        duration: const Duration(milliseconds: 300),
        alignment: Alignment.topCenter,
      ),
    );
  }
}
