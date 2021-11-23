import 'package:c3financial/constants/colors.dart';
import 'package:c3financial/controllers/onboard/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/state_manager.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  final _controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mBackgroundColor,
      body: getBody(),
    );
  }

  getBody() {
    return SafeArea(
      child: Stack(
        children: [
          PageView.builder(
              controller: _controller.pageController,
              onPageChanged: _controller.selectedPageIndex,
              itemCount: _controller.onboardingPages.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _controller.onboardingPages[index].title,
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Red Hat Display"),
                    ),
                    const SizedBox(height: 25),
                    Image.asset(_controller.onboardingPages[index].imageAsset),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        _controller.onboardingPages[index].description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 14, fontFamily: "DM Sans"),
                      ),
                    ),
                  ],
                );
              }),
          Positioned(
            bottom: 20,
            left: 20,
            child: Row(
              children: List.generate(
                _controller.onboardingPages.length,
                (index) => Obx(() {
                  return Container(
                    margin: const EdgeInsets.all(4.0),
                    width: 15,
                    height: 7,
                    decoration: BoxDecoration(
                        color: _controller.selectedPageIndex.value == index
                            ? mSwipeColor
                            : mGrey,
                        borderRadius:
                            const BorderRadius.all(Radius.elliptical(20, 20))),
                  );
                }),
              ),
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: FloatingActionButton(
              backgroundColor: mSwipeColor,
              elevation: 0,
              onPressed: _controller.forwardAction,
              child: Obx(() => Text(_controller.isLastPage ? 'Start' : 'Next')),
            ),
          ),
        ],
      ),
    );
  }
}
