import 'dart:math';
import 'package:animation/Splash/splesh2/splesh2.dart';
import 'package:animation/splesh3/splesh3.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class MyListWidget extends StatefulWidget {
  final String? textt;
  final Color? color;
  const MyListWidget({super.key, this.textt, this.color});

  @override
  State<MyListWidget> createState() => _MyListWidgetState();
}

class _MyListWidgetState extends State<MyListWidget>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> animation;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    animation = Tween(
      begin: 1.0,
      end: 0.0,
    ).animate(controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 8,
                spreadRadius: 0,
                color: Color.fromARGB(255, 220, 213, 213),
                offset: Offset(0, 20))
          ],
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            children: [
              Text(
                "noblask",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              Text(
                "${Random().nextInt(400)}€  monthly",
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.black54),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Unlimeteds cards and spaces',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              Text(
                'investments tips and much more',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Text(
                  "read all the features ",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft, child: Splesh3()));
                },
                child: Text(
                  "I want this",
                  style: TextStyle(fontSize: 18, color: Colors.greenAccent),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
