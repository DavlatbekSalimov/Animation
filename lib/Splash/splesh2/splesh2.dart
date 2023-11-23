import 'package:animation/Splash/splesh2/myListWidget.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Splesh2 extends StatefulWidget {
  const Splesh2({super.key});

  @override
  State<Splesh2> createState() => _Splesh2State();
}

class _Splesh2State extends State<Splesh2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: TextLiquidFill(
                        boxHeight: 66,
                        boxWidth: 550,
                        text: 'Choose',
                        boxBackgroundColor: Colors.white,
                        waveColor: Colors.blueAccent,
                        textStyle: TextStyle(
                          fontFamily: "Libre",
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                        // boxHeight: 30.0,
                      ),
                    ),
                    Text(
                      "your plan",
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: "Libre",
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "your can always start with,",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54),
                    ),
                    Text(
                      "a free plan and then upgrade",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 465,
                child: ListView.builder(
                  itemBuilder: (contex, index) {
                    return Column(
                      children: [
                        TweenAnimationBuilder(
                          tween: Tween(
                            begin: 0.0,
                            end: 1.0,
                          ),
                          duration: Duration(seconds: 5),
                          curve: Curves.easeInOutCubicEmphasized,
                          builder: (contex, value, index) {
                            return Transform.scale(
                              scaleX: value,
                              scaleY: value,
                              child: MyListWidget(),
                            );
                          },
                        )
                      ],
                    );
                  },
                  itemCount: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
