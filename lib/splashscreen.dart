import 'package:ainexus/homenexus.dart';
import 'package:ainexus/registration/phone.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              //first need to add dependices of lottieanimation
              //than add json file in asset
              //we need to add text or something to it
              child:
              Lottie.asset("images/143334-ai-brain.json",
                animate: true,
              ),
            ),
          ),
          AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('Ai Nexus',
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  )),
            ],
            repeatForever: true,
          ),
          SizedBox(height: 20,),
          OutlinedButton(
              onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Phone(),));
          }, child: Text("Go", style: TextStyle(color: Colors.white),))
        ],
      ),
    );
  }
}

