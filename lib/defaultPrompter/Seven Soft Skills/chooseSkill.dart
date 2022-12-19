import 'package:flutter/material.dart';
import 'package:activepeers_app_final_build/defaultPrompter/Seven Soft Skills/Lead/leadq1.dart';
import 'package:activepeers_app_final_build/defaultPrompter/Seven Soft Skills/Communication/commq1.dart';
import 'package:activepeers_app_final_build/defaultPrompter/Seven Soft Skills/Adaptability/adaptq1.dart';
import 'package:activepeers_app_final_build/defaultPrompter/Seven Soft Skills/Team Work/teamq1.dart';
import 'package:activepeers_app_final_build/defaultPrompter/Seven Soft Skills/Problem Solving/probq1.dart';
import 'package:activepeers_app_final_build/defaultPrompter/Seven Soft Skills/Conflict Management/conq1.dart';
import 'package:activepeers_app_final_build/defaultPrompter/Seven Soft Skills/Productivity/prodq1.dart';
class ChooseSkill extends StatelessWidget {
  const ChooseSkill({Key? key}) : super(key: key);

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
                    MaterialPageRoute(builder: (context) => LeadQ1()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('               Leadership              ',
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
                    MaterialPageRoute(builder: (context) => CommQ1()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('          Communication                ',
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
                    MaterialPageRoute(builder: (context) => AdaQ1()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('              Adaptability              ',
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
                    MaterialPageRoute(builder: (context) => TeamQ1()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('               Team Work                  ',
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
                    MaterialPageRoute(builder: (context) => ProbQ1()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('         Problem Solving               ',
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
                    MaterialPageRoute(builder: (context) => ConQ1()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('     Conflict Management       ',
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
                    MaterialPageRoute(builder: (context) => ProdQ1()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('              Productivity                  ',
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