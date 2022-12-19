import 'package:flutter/material.dart';
import 'package:activepeers_app_final_build/startrecording.dart';
class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(flex:1),
            Padding(padding:EdgeInsets.all(16),child: Image.asset("assets/logo3.png", fit: BoxFit.cover)),
            const Spacer(flex:1),
            Padding(padding:EdgeInsets.all(16),child: Center(child: Text('Please meet up with the person you are due to meet to discuss and connect!',style: TextStyle(fontSize: 28),))),
            const Spacer(flex:1),
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
                  MaterialPageRoute(builder: (context) => startRecording()),
                );
                  },
                child: Text(
                  " I have found my partner ",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                )),
            const Spacer(flex:1),
            Center(
              child: ElevatedButton.icon(

                icon: Icon(
                  Icons.dangerous_outlined,
                  color: Colors.white,
                  size: 30.0,
                ),
                label: Text("I can't find my partner",style: TextStyle(
                  fontSize: 24,
                ),),
                onPressed: () {
                  showModalBottomSheet(context: context,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20)
                          )
                      ),
                      builder: (context) => Center(
                        child: Column(
                          children: [

                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Text("Please go to your facilitator and tell them that you can't find the person you're due to meet.",
                                style: TextStyle(fontSize: 24),),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff16A085),
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                    textStyle:
                                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                                onPressed: () => Navigator.pop(context),
                                child: Text("Go Back",style: TextStyle(
                                  fontSize: 28,
                                ),)),

                          ],),));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding:
                    EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),

            ),
            const Spacer(flex:3),
          ],
        ),
      ),
    );
  }
}
