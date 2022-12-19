import 'package:flutter/material.dart';
import 'dart:async';
import 'netq2.dart';
class NetQ1 extends StatefulWidget {
  const NetQ1({Key? key}) : super(key: key);

  @override
  State<NetQ1> createState() => _NetQ1State();
}

class _NetQ1State extends State<NetQ1> {
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
              Text('Question 1/4',
                style: Theme.of(context).textTheme.headline2?.copyWith(color: Color(0xff16A085)),
              ),
              const Spacer(flex:1),
              Text("Can you describe your target market for your business or who might your ideal employer be?",
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
                      MaterialPageRoute(builder: (context) => NetQ2()),
                    );
                  },
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
