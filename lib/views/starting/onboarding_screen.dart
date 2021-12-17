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
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  getBody() {
    return Stack(
      children: [
        PageView.builder(
            controller: _controller.pageController,
            onPageChanged: _controller.selectedPageIndex,
            itemCount: _controller.onboardingPages.length,
            itemBuilder: (context, index) {
              return Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: Image.asset(
                          _controller.onboardingPages[index].imageAsset),
                      color: Colors.white),
                  const SizedBox(height: 30),
                  Center(
                    child: Text(
                      _controller.onboardingPages[index].title,
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Red Hat Display"),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      _controller.onboardingPages[index].description,
                      textAlign: TextAlign.center,
                      style:
                          const TextStyle(fontSize: 14, fontFamily: "DM Sans"),
                    ),
                  ),
                ],
              );
            }),
        // Positioned(
        //   bottom: 20,
        //   left: 20,
        //   child:
        // ),
        Positioned(
          right: 20,
          bottom: 20,
          left: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 35),
              Row(
                children: List.generate(
                  _controller.onboardingPages.length,
                  (index) => Obx(() {
                    return Container(
                      margin: const EdgeInsets.all(4.0),
                      width:
                          _controller.selectedPageIndex.value == index ? 23 : 6,
                      height: 6,
                      decoration: BoxDecoration(
                          color: _controller.selectedPageIndex.value == index
                              ? mSwipeColor
                              : mGrey,
                          borderRadius: BorderRadius.circular(10)
                          // borderRadius:
                          //     const BorderRadius.all(Radius.elliptical(20, 20))
                          ),
                    );
                  }),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _controller.forwardAction();
                },
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      color: Color(0xFF1e3f64)),
                  child: Obx(() => Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                            _controller.isLastPage
                                ? 'Get Started'
                                : 'Swipe Next',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600)),
                      )),

                  // Text(_controller.isLastPage ? 'Start' : 'Next')),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
