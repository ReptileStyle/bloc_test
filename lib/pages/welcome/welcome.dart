import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc_proj/main.dart';
import 'package:bloc_proj/navigation/app_router.dart';
import 'package:bloc_proj/pages/welcome/bloc/welcome_blocs.dart';
import 'package:bloc_proj/pages/welcome/bloc/welcome_events.dart';
import 'package:bloc_proj/pages/welcome/bloc/welcome_states.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController pageController = PageController(initialPage: 0);
  ScrollPhysics scrollPhysics = const PageScrollPhysics();
  bool isButtonEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: BlocBuilder<WelcomeBloc, WelcomeStates>(
          builder: (context, state) => Container(
            margin: EdgeInsets.only(top: 34.h),
            width: 375.w,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView(
                  physics: scrollPhysics,
                  controller: pageController,
                  onPageChanged: (index) {
                    BlocProvider.of<WelcomeBloc>(context)
                        .add(WelcomeEvents.changePage(index));
                  },
                  children: [
                    _page(
                      0,
                      context,
                      "next",
                      "First See Learning",
                      "Forget about a lot of paper all knowledge in one learning",
                      "assets/images/reading.png",
                    ),
                    _page(
                        1,
                        context,
                        "next",
                        "Connect With Everyone",
                        "Always keep in touch with your tutor & friend. Let's get connected",
                        "assets/images/boy.png"),
                    _page(
                        2,
                        context,
                        "get started",
                        "Always Fascinating Learning",
                        "Anywhere, anytime. The time is at your discretion so study whenever you want.",
                        "assets/images/man.png"),
                  ],
                ),
                Positioned(
                    bottom: 100.w,
                    child: DotsIndicator(
                      position: state.page.toDouble(),
                      dotsCount: 3,
                      mainAxisAlignment: MainAxisAlignment.center,
                      decorator: DotsDecorator(
                          color: Colors.grey,
                          activeColor: Colors.blue,
                          size: const Size.square(8.0),
                          activeSize: const Size(18.0, 8.0),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _page(int index, BuildContext context, String buttonText, String title,
      String subtitle, String imagePath) {
    StackRouter appRouter = AutoRouter.of(context);

    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.normal),
          ),
        ),
        Container(
          width: 375.w,
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Text(
            subtitle,
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 100.h, left: 25.w, right: 25.w),
          child: FilledButton(
            onPressed: () {
              if (isButtonEnabled) {
                isButtonEnabled = false;
                onButtonClick(index, appRouter);
              }
            },
            style: FilledButton.styleFrom(
                minimumSize: Size.fromHeight(50.w),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Text(
              buttonText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal),
            ),
          ),
        )
      ],
    );
  }

  void onButtonClick(int index, StackRouter appRouter) {
    if (index < 2) {
      setState(() {

        scrollPhysics = const NeverScrollableScrollPhysics();
      });
      pageController
          .animateToPage(index + 1,
              duration: const Duration(milliseconds: 300),
              curve: Curves.decelerate)
          .then((value) {
        setState(() {
          scrollPhysics = const PageScrollPhysics();
          isButtonEnabled = true;
        });
      });
    } else {
      appRouter.replaceNamed('/signin');
    }
  }
}
