import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const kBgColor = Color.fromARGB(255, 116, 179, 216);
const kWhite = Color.fromARGB(255, 255, 255, 255);
const kBlueRibbon = Color(0xFF3366FF);
const kDarkGrey = Color(0xFFFABABAB);
const kMatterhornBlack = Color(0xFF525252);
const kEgyptianBlue = Color(0xFF102693);
const kNightBlack = Color(0xFF2C2C2C);
const kLuckyBlueParent = Color(0xFF363853);
const kTreeGreen = Color(0xFF6ED097);
const kLightGrey = Color(0xFFCBCBCB);
const kOrange = Color(0xFFF65725);
const kTropicalBlue = Color(0xFFADC8FF);
const kHeading5 = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w600,
  color: Colors.black,
  letterSpacing: 1.5,
  wordSpacing: 2.0,
  fontStyle: FontStyle.italic,
  height: 1.5,
);
const kSubtittle1 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  letterSpacing: 1.5,
  wordSpacing: 2.0,
  fontStyle: FontStyle.italic,
  height: 1.5,
);
const kSubtittle2 = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  letterSpacing: 1.5,
  wordSpacing: 2.0,
  fontStyle: FontStyle.italic,
  height: 1.5,
);
const kButton1 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: Colors.white,
  letterSpacing: 1.5,
  wordSpacing: 2.0,
  fontStyle: FontStyle.italic,
  height: 1.5,
);
const kButton2 = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w500,
  color: Colors.white,
  letterSpacing: 1.5,
  wordSpacing: 2.0,
  fontStyle: FontStyle.italic,
  height: 1.5,
);
const kCaption = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.5,
  wordSpacing: 2.0,
  fontStyle: FontStyle.italic,
  height: 1.5,
);
const kBody1 = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.5,
  wordSpacing: 2.0,
  fontStyle: FontStyle.italic,
  height: 1.5,
);
const kBody2 = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.5,
  wordSpacing: 2.0,
  fontStyle: FontStyle.italic,
  height: 1.5,
);
const kHeading6 = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w700,
  letterSpacing: 1.5,
  wordSpacing: 2.0,
  fontStyle: FontStyle.italic,
  height: 1.5,
);
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key});
  static const nameRoute = '/';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBgColor.withOpacity(0.5),
        child: Column(children: [
          SafeArea(
            child: Image(
              image: AssetImage('assets/image1.png'),
            ),
          ),
          SizedBox(height: 30,
          ),
          Container(
            padding: EdgeInsets.all(26),
            constraints: BoxConstraints.expand(
            height: 300, 
            width: 315
            ),
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
                ),
              ),
              child: Column(
                children: [Text('Welcome!',style: kHeading5,
                ),
                SizedBox(height: 15,
                ),
                Text('welcome to Fleet Finance, the easy way to improve your finances and help you control expenses and income', 
                style: kSubtittle2.copyWith(color: kDarkGrey),
                textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 70,
                  ),
                TextButton(
                  onPressed: (){
                    Navigator.pushNamedAndRemoveUntil(context,
                     '/main', (route) => false);
                  }, 
                  child: Text('Get Started',
                  style: kButton1,
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: kBlueRibbon,
                    padding: EdgeInsets.symmetric(
                      vertical: 14, 
                      horizontal: 36,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                        ),
                    )
                    ),
                  )
              ],
              ),
            ),
        ],
        ),
      ),
    );
  }
}