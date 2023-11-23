import 'package:animation/Splash/splesh2/splesh2.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:page_transition/page_transition.dart';

class Splesh1 extends StatefulWidget {
  const Splesh1({Key? key}) : super(key: key);

  @override
  State<Splesh1> createState() => _Splesh1State();
}

class _Splesh1State extends State<Splesh1> with TickerProviderStateMixin {
  late final AnimationController contollerText;
  late final Animation<Offset> animation;
  late final AnimationController contollerText1;
  late final Animation<Offset> animation1;

  int constsecond = 2;

  @override
  void initState() {
    super.initState();
    contollerText = AnimationController(
      vsync: this,
      duration: Duration(seconds: constsecond),
    );

    contollerText1 = AnimationController(
      vsync: this,
      duration: Duration(seconds: constsecond),
    );

    animation = Tween(
      begin: Offset(-4.0, 0),
      end: Offset(0, 0),
    ).animate(contollerText);

    animation1 = Tween(
      begin: Offset(4.0, 0), // Fixed this line
      end: Offset(0, 0),
    ).animate(contollerText1);

    contollerText.forward();
    contollerText1.forward(); // Added this line
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                " MONARK ",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
            Image.asset(
              "assets/images/p.jpg",
              height: 350,
            ),
            SlideTransition(
              position: animation,
              child: Text(
                " The first bank ",
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: "Libre",
                    fontWeight: FontWeight.w500),
              ),
            ),
            SlideTransition(
              position: animation1,
              child: Text(
                "  without  a  bank",
                style: TextStyle(
                    fontSize: 36,
                    fontFamily: "Libre",
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Join the nobank exprinke,',
                  textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                  speed: const Duration(milliseconds: 90),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 1000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            Expanded(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'enitirely online, no jokes,',
                    textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 1,
                pause: const Duration(milliseconds: 2000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ),
            TweenAnimationBuilder(
              tween: Tween(
                begin: 0.0,
                end: 1.0,
              ),
              duration: Duration(seconds: constsecond),
              builder: (context, value, child) {
                return Transform.scale(
                  scale: value as double,
                  child: NewWidget(),
                );
              },
              curve: Curves.bounceOut,
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 48),
      child: SizedBox(
        width: 150,
        height: 55,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black87,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          onPressed: () {
            Navigator.push(
      context,
      PageTransition(
        type: PageTransitionType.topToBottom,
        child: Splesh2(),
        duration: Duration(milliseconds: 1000),
        inheritTheme: true,
        ctx: context),
);
          },
          child: Text(
            "Enter",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
