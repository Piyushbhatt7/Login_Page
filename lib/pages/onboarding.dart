import 'package:flutter/material.dart';
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 120.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient:
          LinearGradient(colors: [
            Color(0xffB51837),
            Color(0xff661C3A),
            Color(0xff301939)
          ],
          begin: Alignment.topLeft, end: Alignment.topRight

          ),
        ),
        child: Column(
          children: <Widget>[
            
            Image.asset("images/dumbell.png",
              color: Colors.white,
              height: 80,
              width: 80,
              //fit: BoxFit.cover
            ),

            Text("FITNESS CLUB", style: TextStyle(color: Colors.white, fontSize: 30),)

          ],
        ),
      ),
    );

  }
}
