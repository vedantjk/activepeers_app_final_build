import 'dart:async';
import 'package:flutter/material.dart';
import 'defaultPrompter/startpage.dart';
class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  Timer? countdownTimer;
  Duration myDuration = const Duration(minutes: 2);

  @override
  void initState() {
    super.initState();
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  // void startTimer() {
  //   countdownTimer =
  //       Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  // }
  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits(myDuration.inMinutes);
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return Scaffold(

        body:
        Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                const Spacer(flex: 1),
                Padding(padding: EdgeInsets.all(16),
                    child: Image.asset("assets/logo3.png", fit: BoxFit.cover)),
                const Spacer(flex: 1),
                Text(
                  "Introduction",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(flex: 1),
                Text("Take a couple minutes to\n    introduce yourselves.",
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
                const Spacer(flex: 2),
                Text(
                  "$minutes:$seconds",
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(flex: 2),
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
                        MaterialPageRoute(builder: (context) => DefaultStart()),
                      );
                    },
                    child: Text(
                      "Ready now!",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    )),
                    const Spacer(flex: 2,)

              ],
            ),
          ),
        )

    );
  }
}