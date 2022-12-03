import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:syoft_ui/view/register_page/intro_page.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: IntroductionScreen(
            dotsFlex: 2,
            dotsContainerDecorator: BoxDecoration(),
            controlsMargin: EdgeInsets.all(8),
            done: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.black,
              child: Text(
                "Done",
                style: TextStyle(color: Colors.white),
              ),
            ),
            onDone: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (context) => RegisterIntroScreen()),
                  (route) => false);
            },
            next: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black,
              child: Text(
                "Next",
                style: TextStyle(color: Colors.white),
              ),
            ),
            pages: [
              PageViewModel(
                titleWidget:
                    Align(alignment: Alignment.topRight, child: Text("Skip")),
                bodyWidget: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * .07,
                      ),
                      Text(
                        "Order Your Food",
                        style: GoogleFonts.rubik(
                            fontSize: 23, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: size.height * .02,
                      ),
                      Text(
                        "Now you can order food any time right from your mobile",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      )
                    ],
                  ),
                ),
                footer: image("asset/Images/mobile_orderpage.png"),
              ),
              PageViewModel(
                titleWidget:
                    Align(alignment: Alignment.topRight, child: Text("Skip")),
                bodyWidget: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("asset/Images/cook_withfood.png"),
                      Text(
                        "Cooking Safe Food",
                        style: GoogleFonts.rubik(
                            fontSize: 23, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: size.height * .02,
                      ),
                      Text(
                        "We are maintain safty and We keep clean while making food",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
              PageViewModel(
                titleWidget:
                    Align(alignment: Alignment.topRight, child: Text("Skip")),
                bodyWidget: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * .07,
                      ),
                      Text(
                        "Quick Delivery",
                        style: GoogleFonts.rubik(
                            fontSize: 23, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: size.height * .02,
                      ),
                      Text(
                        "Order your favorite meals will be immediately deliver",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      )
                    ],
                  ),
                ),
                footer: image("asset/Images/delivery_vehicle.png"),
              ),
            ],
            dotsDecorator: DotsDecorator(
                color: Colors.grey,
                size: Size(5, 5),
                activeSize: Size(5, 5),
                activeColor: Colors.black
            ),
          ),
        ),
      ),
    );
  }

  Widget image(String imagePath) => Center(
          child: Image.asset(
        imagePath,
        width: 280,
      ));
  PageDecoration pageDecoration = const PageDecoration(
      pageColor: Colors.white,
      titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
      bodyTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.grey,
      ),
      titlePadding: EdgeInsets.fromLTRB(0, 100, 0, 10),
      bodyAlignment: Alignment.centerLeft);
}
