import 'package:flutter/material.dart';
import 'intropage.dart';
class startRecording extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Padding(padding:EdgeInsets.all(16),child: Image.asset("assets/logo3.png", fit: BoxFit.cover)),
              SizedBox(
                height: 70,
              ),
              Text(
                "Ready to share insights with\n your partner?",
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff16A085),
                      padding:
                      EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntroPage()),
                  );
                    },
                  child: Text(
                    "          START          ",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )),
              SizedBox(
                height: 70,
              ),
              // Text(
              //   "The voices will be recorded and the \n meeting contents will be analysed for\n your further reflection. You can check\n the individual reflection report\n after the event.",
              //   style: TextStyle(color: Colors.red, fontSize: 18),
              // )
            ],
          )),
    );
  }
}