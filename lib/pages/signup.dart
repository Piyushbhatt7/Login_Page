import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Hello\nSign in!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 25.0,),

            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 80.0, left: 30.0, right: 30.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Text(
                      "Email",
                      style: TextStyle(
                        color:  Color(0xffB51837),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter Email',
                          prefixIcon: Icon(Icons.email_outlined)
                      ),
                    ),

                    SizedBox(height: 40.0,),

                    Text(
                      "Password",
                      style: TextStyle(
                        color:  Color(0xffB51837),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),


                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter Password',
                          prefixIcon: Icon(Icons.lock_outline)
                      ),
                    ),

                    SizedBox(height: 18.0,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color:  Colors.blue,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 60.0,),

                    Container(
                      height: 50,
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

                          borderRadius: BorderRadius.circular((30.0))

                      ),
                      child: Center(
                        child: Text("SIGN IN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height/8,),

                    Row (
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[

                            Text("Don't have an account?",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500
                              ),
                            ),

                            GestureDetector(
                              onTap: ()
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup())
                              },
                              child: Text("SIGN UP",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    )



                  ],
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
