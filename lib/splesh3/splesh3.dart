import 'package:animation/Splash/splesh2/splesh2.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Splesh3 extends StatefulWidget {
  const Splesh3({Key? key}) : super(key: key);

  @override
  _Splesh1State createState() => _Splesh1State();
}

class _Splesh1State extends State<Splesh3> with TickerProviderStateMixin {
  late final AnimationController controllerMonark;
  late final Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    controllerMonark = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    );
    animation = Tween(
      begin: Offset(0, 0.8),
      end: Offset(0, 0.2),
    ).animate(controllerMonark);

    controllerMonark.forward();
    controllerMonark.resync(this); // Animatsiyani boshlash
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SlideTransition(
              position: animation,
              child: Center(
                child: Text(
                  " MONARK ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
            ),
            Image.asset(
              "assets/images/image.png",
              height: 350,
            ),
            Text(
              " You did it ",
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: "Libre",
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "  you're in.",
              style: TextStyle(
                  fontSize: 36,
                  fontFamily: "Libre",
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "welcome lorenzo now ,",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54),
            ),
            
            Expanded(
              child: Text(
                "you are a nobanker ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 48),
              child: SizedBox(
                width: 140,
                height: 50,
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
                      MaterialPageRoute(
                        builder: (context) => Splesh2(),
                      ),
                    );
                  },
                  child:AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  'Enter',
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
              isRepeatingAnimation: true,
              totalRepeatCount: 3,
            ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
