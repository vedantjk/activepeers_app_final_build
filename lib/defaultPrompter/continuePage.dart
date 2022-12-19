import 'package:flutter/material.dart';
import 'package:activepeers_app_final_build/startpage.dart';
import 'package:activepeers_app_final_build/defaultPrompter/startpage.dart';
class continuePage extends StatelessWidget {
  const continuePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Peer Learning Prompter'),
        backgroundColor: Color(0xff16A085),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              const Spacer(flex:1),
              Text("Would you like to continue to choose another Peer Learning Prompter or end this session?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600 ,
                  color: Color(0xff16A085),
                ),),
              const Spacer(flex:1),

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
                      MaterialPageRoute(builder: (context) => DefaultStart()),
                    );
                  },
                  child: Text(
                    "Choose another prompter",
                    style: TextStyle(fontSize: 25),
                  )),
              const Spacer(flex:1),
              ElevatedButton.icon(
                icon: Icon(
                  Icons.dangerous_outlined,
                  color: Colors.white,
                  size: 30.0,
                ),
                label: Text("End",style: TextStyle(
                  fontSize: 24,
                ),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StartPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding:
                    EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              const Spacer(flex:1),


            ],
          ),
        ),
      ),
    );
  }
}
