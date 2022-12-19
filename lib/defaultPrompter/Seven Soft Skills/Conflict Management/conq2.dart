import 'package:flutter/material.dart';
import 'dart:async';
import 'conq3.dart';
class ConQ2 extends StatefulWidget {
  const ConQ2({Key? key}) : super(key: key);

  @override
  State<ConQ2> createState() => _ConQ2State();
}

class _ConQ2State extends State<ConQ2> {
  Timer? countdownTimer;
  Duration myDuration = const Duration(minutes: 3);

  @override
  void initState() {
    super.initState();
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

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
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Spacer(flex: 2),
              Padding(padding: EdgeInsets.all(16),
                  child: Image.asset("assets/logo3.png", fit: BoxFit.cover)),
              const Spacer(flex: 2),
              Text('Question 2/4',
                style: Theme.of(context).textTheme.headline2?.copyWith(color: Color(0xff16A085)),
              ),
              const Spacer(flex:1),
              Text("You have noticed that a team member is aggressive or arrogant toward the rest of the team. How would you approach this person?",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Color(0xff16A085)),
              ),
              const Spacer(flex:2),
              Text(
                "$minutes:$seconds",
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(flex: 2,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff16A085),
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ConQ3()),
                    );                  },
                  child: Text("We're done - Next question please!",
                    style: TextStyle(fontSize: 20),
                  )
              ),
              const Spacer(flex: 2,)
            ],
          ),
        ),
      ),
    );
  }
}