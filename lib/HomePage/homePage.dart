import 'package:flutter/material.dart';

class Animationn extends StatefulWidget {
  const Animationn({Key? key}) : super(key: key);

  @override
  State<Animationn> createState() => _AnimationnState();
}

class _AnimationnState extends State<Animationn>
    with SingleTickerProviderStateMixin {
  Color orqafon = Colors.white10;
 // late Animation<double> animation;
   late Animation<Offset> animation;

  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    animation = Tween(begin:const  Offset(0,0), end:const Offset(0, 0.4)).animate(controller)
      ..addStatusListener((status) => print('$status'));
    controller.repeat();
    //controller.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orqafon,
      appBar: AppBar(
    elevation: 20,
    
    
        backgroundColor: orqafon,
        centerTitle: true,
        title: Text("Iphone",style: TextStyle(
          fontSize: 30
        ),),
      ),
      body:SlideTransition(
              position: animation,
              child: Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 
                  SlideTransition(
                    position: animation,
                    child: Center(
                      child: Image.asset(
                        
                        "assets/images/ip.webp",
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          if (orqafon == Colors.white30) {
            orqafon = Colors.white;
            controller.repeat(
              reverse: true,
            );
          } else {
            setState(() {
              orqafon = Colors.yellow;
            });

            controller.repeat();
          }
        });
      }),
    );
  }
}

