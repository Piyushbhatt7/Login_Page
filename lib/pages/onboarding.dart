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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Image.asset("images/dumbell.png",
              color: Colors.white,
              height: 80,
              width: 80,
              //fit: BoxFit.cover
            ),

            Text("FITNESS CLUB",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28),
            ),

            SizedBox(height: 20.0,),

            Text("Welcome Back", style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.bold)
              ,),

            SizedBox(height: 40.0,),

            Container(
              padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
              margin: EdgeInsets.only(left: 30.0, right: 30.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white60,width: 2.0,), borderRadius: BorderRadius.circular(30.0)
              ),
              child: Center(
                child: Text("SIGN IN",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
            ),

            SizedBox(height: 40.0,),

            Container(
              padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
              margin: EdgeInsets.only(left: 30.0, right: 30.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                   borderRadius: BorderRadius.circular(30.0),

              ),
              child: Center(
                child: Text("SIGN UP",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            //Spacer(),
            SizedBox(height: MediaQuery.of(context).size.height/8,),

            Text("Login with Social Media",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,),
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.white
                  ),
                  child: Image.asset("images/instagram.jpg", height: 40, width: 40, fit: BoxFit.cover,),
                ),

                SizedBox(width: 20,),

                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.white
                  ),
                  child: Image.asset("images/face.png", height: 40, width: 40, fit: BoxFit.cover,),
                ),

                SizedBox(width: 20,),

                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.white
                  ),
                  child: Image.asset("images/google.png", height: 40, width: 40, fit: BoxFit.cover,),
                )
              ],
            ),
          ],
        ),
      ),
    );

  }
}
