import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class BueDashBoard extends StatefulWidget {
  const BueDashBoard({Key? key}) : super(key: key);

  @override
  _BueDashBoardState createState() => _BueDashBoardState();
}

class _BueDashBoardState extends State<BueDashBoard> {
  late PageController _pageController;
  double _screenWidth = 0;
  double _screenH = 0;
  double adjust = 1;

  // Replace video controllers with YouTube controllers
  late YoutubePlayerController _youtubeController1;
  late YoutubePlayerController _youtubeController2;

  final List<InstructionSection> _page1Sections = [
    InstructionSection(
      title: "Menu",
      content:
          "•Set Positioning Laser\n•Chamber Light\n•Switch between Imperial or Metric\n•Don't Touch 110V\n•Set different languages\n•Coolant tank",
    ),
    InstructionSection(
      title: "RPM Button",
      content:
          "Click the RPM button in the main page \nset the new RPM using number pad",
    ),
    InstructionSection(
      title: "Feed Rate",
      content:
          "Click the Feed Rate button in the main page \nset the new Feed Rate using number pad",
    ),
  ];

  final List<InstructionSection> _page2Sections = [
    InstructionSection(
      title: "Cut Length",
      content:
          "Click the Cut Length button in the main page \nset the new Cut length using number pad",
    ),
    InstructionSection(
      title: "Save a cutting method",
      content:
          "After set the RPM, feed rate and cutting length, \nclick save and enter the blade type",
    ),
    InstructionSection(
      title: "Load a cutting method",
      content: "Select open file button \nfind the cutting method you saved",
    ),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _initializeYoutubeControllers();
  }

  void _initializeYoutubeControllers() {
    _youtubeController1 = YoutubePlayerController.fromVideoId(
      videoId: 'YOUR_YOUTUBE_VIDEO_ID_1',
      params: const YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
      ),
    );

    _youtubeController2 = YoutubePlayerController.fromVideoId(
      videoId: 'YOUR_YOUTUBE_VIDEO_ID_2',
      params: const YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _youtubeController1.close();
    _youtubeController2.close();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    adjust = _screenH / _screenWidth < 0.5 ? 0.75 : 1;
    if (_screenH / _screenWidth < 0.5) {
      _screenH *= 1.35;
    }
  }

  Widget _buildInstructionSection(
      InstructionSection section, double topPadding) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding, left: _screenWidth / 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            section.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(section.content),
        ],
      ),
    );
  }

  Widget _buildPage(
      YoutubePlayerController? controller, List<InstructionSection> sections,
      {bool showSwipeHint = false}) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: _screenH / 40),
            if (controller != null)
              Container(
                width: _screenWidth / 1.1,
                margin: EdgeInsets.symmetric(horizontal: _screenWidth / 20),
                child: YoutubePlayer(
                  controller: controller,
                  aspectRatio: 16 / 9,
                ),
              ),
            ...sections.map((section) => _buildInstructionSection(
                  section,
                  _screenH / 20,
                )),
            if (showSwipeHint)
              Padding(
                padding: EdgeInsets.only(
                  top: _screenH / 20,
                  left: _screenWidth / 2,
                  bottom: 20,
                ),
                child: const Text(
                    "Swipe to next page to see more about the buttons!"),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Buehler Precision Cutter User Interface",
          style: TextStyle(fontSize: _screenH / 40),
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          _buildPage(_youtubeController1, _page1Sections, showSwipeHint: true),
          _buildPage(_youtubeController2, _page2Sections),
        ],
      ),
    );
  }
}

class InstructionSection {
  final String title;
  final String content;

  const InstructionSection({
    required this.title,
    required this.content,
  });
}
