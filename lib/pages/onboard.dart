import 'package:flutter/material.dart';
import 'package:pill_pal/pages/login.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<String> _imagePaths = [
    'images/css.png',
    'images/world.png',
    'images/helli.png',
  ];

  List<String> _headings = [
    'Welcome to MyApp',
    'Explore Features',
    'Get Started'
  ];

  List<String> _subTexts = [
    'This is a demo onboarding screen.',
    'Discover all the amazing features.',
    'Start using the app now!'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _imagePaths.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return _buildPage(_imagePaths[index], _headings[index], _subTexts[index]);
            },
          ),
          Positioned(
            bottom: 50.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: ElevatedButton(
                    style: ButtonStyle(

                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),

                            )
                        )
                    ),
                    onPressed: () {
                      // Handle Skip button tap
                      // You can navigate to another screen or perform any action
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: _buildPageIndicator(),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle Next button tap
                      if (_currentPage == _imagePaths.length - 1) {
                        // If it's the last page, you can navigate to another screen or perform any action
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      } else {
                        _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
                      }
                    },
                    child: Text(
                      _currentPage == _imagePaths.length - 1 ? 'Finish' : 'Next',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage(String imagePath, String heading, String subText) {
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          Text(
            heading,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            subText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _imagePaths.length; i++) {
      indicators.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return indicators;
  }

  Widget _indicator(bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: isActive ? 24.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFFB784B7) : Colors.grey,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}