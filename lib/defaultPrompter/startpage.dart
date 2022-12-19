import 'package:flutter/material.dart';
import 'package:activepeers_app_final_build/defaultPrompter/Learning and Development/landq1.dart';
import 'package:activepeers_app_final_build/defaultPrompter/Mentoring/mentq1.dart';
import 'package:activepeers_app_final_build/defaultPrompter/Coaching/coachq1.dart';
import 'package:activepeers_app_final_build/defaultPrompter/Experience Sharing/expq1.dart';
import 'package:activepeers_app_final_build/defaultPrompter/Networking/netq1.dart';
import 'package:activepeers_app_final_build/defaultPrompter/Buy/buyq1.dart';
import 'package:activepeers_app_final_build/defaultPrompter/Idea/ideaq1.dart';
import 'package:activepeers_app_final_build/defaultPrompter/Seven Soft Skills/chooseSkill.dart';
class DefaultStart extends StatelessWidget {
  const DefaultStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:EdgeInsets.all(16),
          child: Column(
            children: [
              const Spacer(flex: 5,),
              Padding(padding: EdgeInsets.all(16),
                  child: Image.asset("assets/logo3.png", fit: BoxFit.cover)),
              const Spacer(flex: 4,),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LandQ1()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Learning and Development',
                    style: TextStyle(
                      fontSize: 26,
                      color: Color(0xff16A085),
                    ),),
                ),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(width: 2.0, color: Color(0xff16A085)),
                ),

              ),
              const Spacer(flex: 2,),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MentQ1()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('               Mentoring               ',
                    style: TextStyle(
                      fontSize: 26,
                      color: Color(0xff16A085),
                    ),),
                ),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(width: 2.0, color: Color(0xff16A085)),
                ),

              ),
              const Spacer(flex: 2,),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CoachQ1()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('                Coaching                ',
                    style: TextStyle(
                      fontSize: 26,
                      color: Color(0xff16A085),
                    ),),
                ),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(width: 2.0, color: Color(0xff16A085)),
                ),

              ),
              const Spacer(flex: 2,),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExpQ1()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('       Experience Sharing       ',
                    style: TextStyle(
                      fontSize: 26,
                      color: Color(0xff16A085),
                    ),),
                ),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(width: 2.0, color: Color(0xff16A085)),
                ),

              ),
              const Spacer(flex: 2,),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NetQ1()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('             Networking                ',
                    style: TextStyle(
                      fontSize: 26,
                      color: Color(0xff16A085),
                    ),),
                ),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(width: 2.0, color: Color(0xff16A085)),
                ),

              ),
              const Spacer(flex: 2,),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BuyQ1()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('       Establishing Buy-In       ',
                    style: TextStyle(
                      fontSize: 26,
                      color: Color(0xff16A085),
                    ),),
                ),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(width: 2.0, color: Color(0xff16A085)),
                ),

              ),
              const Spacer(flex: 2,),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IdeaQ1()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('         Idea Exploration         ',
                    style: TextStyle(
                      fontSize: 26,
                      color: Color(0xff16A085),
                    ),),
                ),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(width: 2.0, color: Color(0xff16A085)),
                ),

              ),
              const Spacer(flex: 2,),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChooseSkill()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('        Seven Soft Skills        ',
                    style: TextStyle(
                      fontSize: 26,
                      color: Color(0xff16A085),
                    ),),
                ),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(width: 2.0, color: Color(0xff16A085)),
                ),

              ),
              const Spacer(flex: 5,),
            ],
          ),
        ),
      ),
    );
  }
}
