import 'package:flutter/material.dart';
import 'package:iger/screens/welcome_screen.dart';
import 'package:iger/utils/on_board.dart';
import 'package:iger/widgets/dot_indicator.dart';
import 'package:iger/widgets/on_board_content.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: demoData.length,
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    _pageIndex = value;
                  });
                },
                itemBuilder: (context, index) => OnBoardContent(
                  title: demoData[index].title,
                  image: demoData[index].image,
                  description: demoData[index].description,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24.0,
                bottom: 24.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _pageIndex == 0
                      ? const SizedBox()
                      : SizedBox(
                          width: 70,
                          height: 70,
                          child: ElevatedButton(
                            onPressed: () {
                              _pageController.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            },
                            child: const Icon(
                              Icons.arrow_back_ios,
                              size: 40,
                            ),
                          ),
                        ),
                  const Spacer(),
                  ...List.generate(
                    demoData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: DotIndicator(
                        isActive: index == _pageIndex,
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 70.0,
                    height: 70.0,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_pageController.page == demoData.length - 1) {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const WelcomeScreen(),
                            ),
                          );
                        } else {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 40.0,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

final List<OnBoard> demoData = [
  const OnBoard(
    title: 'Find the items you need',
    image: 'assets/images/collegues_images.png',
    description: 'The best app for managing your grocery list',
  ),
  const OnBoard(
    title: 'Get those items delivered',
    image: 'assets/images/desktop_calendar_image.png',
    description: 'The best app for managing your grocery list',
  ),
  const OnBoard(
    title: 'Fast and easy',
    image: 'assets/images/desktop_image.png',
    description: 'The best app for managing your grocery list',
  ),
  const OnBoard(
    title: 'Welcome to iGer',
    image: 'assets/images/online_meeting_image.png',
    description: 'The best app for managing your grocery list',
  )
];
