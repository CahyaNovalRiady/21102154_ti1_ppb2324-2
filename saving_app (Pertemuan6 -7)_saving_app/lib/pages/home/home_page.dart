import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/main_page.dart';
import 'package:flutter_application_1/pages/on_boarding_page.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      color: kBgColor.withOpacity(0.5),
      child: Stack(
        children: [
          Padding(padding: const EdgeInsets.only(
            left: 30,
            top: 35,
            right: 30,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    'Welcome',
                    style: kBody1.copyWith(
                      color: kMatterhornBlack,
                      ),
                    ),
                    Text(
                    'Cahya Noval Riady 👏',
                    style: kHeading6.copyWith(
                      color: kMatterhornBlack),
                    ),
                ],
                ),
                Container(
                  constraints: BoxConstraints.expand(
                    height: 40,
                    width: 40,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/User-img.jpg'),
                          fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: kGrey,
                              blurRadius: 5,
                              offset: Offset.fromDirection(2),
                            ),
                          ]
                        ),
                    )
              ],
              )
              ,SizedBox(
                height: 28
                ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
              constraints: BoxConstraints.expand(height: 170),
              decoration: BoxDecoration(borderRadius: BorderRadius.all(
                Radius.circular(25),
                ),
                image: DecorationImage(image: AssetImage('assets/bg-container.jpg'),
                fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: kGrey, 
                    blurRadius: 5,
                    offset: Offset.fromDirection(2),
                  ),
                ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('My savings', 
                    style: kSubtittle2.copyWith(color: kWhite),
                    )
                    ,SizedBox(height: 12,),
                    Text('Rp. 10.430.000', style: kHeading5,),
                    SizedBox(height: 10,),
                    LinearPercentIndicator(
                      lineHeight: 4,
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      progressColor: kEgyptianBlue,
                      percent: 0.3,
                      backgroundColor: kWhite,
                    )
                    ,SizedBox(height: 16,),
                    Text('Rp. 10.430.000 / Rp. 40.000.000', style: kCaption.copyWith(color: kWhite,),
                    ),
                ],
                ),
              )
              ,SizedBox(height: 30,),
              Row(
                children: [
                  _transactionButton('assets/Save.png', 'Save Money'),
                  SizedBox(width: 25,
                  ),
                  _transactionButton('assets/pay.png', 'Pay'),
                ],
              )
            ],
            ),
          )
          ,Container(
            margin: EdgeInsets.only(top: 200),
            child: DraggableScrollableSheet(builder:(context, ScrollController)=>
            Container(
                decoration: BoxDecoration(color: kWhite, borderRadius: BorderRadius.vertical(top: Radius.circular(40),
                ),
                ),
                padding: const EdgeInsets.only(
                  left: 30,right: 30,top: 21,
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 14 + 4),
                      child: SingleChildScrollView(controller: ScrollController,
                      child: Column(
                        children: [
                          Center(
                            child: Text('Transaction History', 
                            style: kHeading6.copyWith(color: kLuckyBlueParent)
                            ),
                          ),
                          SizedBox(
                            height: 31,
                          ),
                          _transaction_list(
                            kTreeGreen.withOpacity(0.2),
                            'assets/images.png',
                            'Success!'
                            ,'February 14, 03:25 PM',
                            '+ 100.000',
                          ),
                          _transaction_list(
                            kTreeGreen.withOpacity(0.2),
                            'assets/images.png',
                            'Success!'
                            ,'February 26, 03:25 PM',
                            '+ 130.000',
                          ),
                          _transaction_list(
                            kOrange.withOpacity(0.2),
                            'assets/Triangle 2.png',
                            'Starbuck Drinks'
                            ,'Maret 12, 03:25 PM',
                            '+ 200.000',
                          ),
                          _transaction_list(
                            kOrange.withOpacity(0.2),
                            'assets/Triangle 2.png',
                            'Payment Invest'
                            ,'Maret 12, 03:25 PM',
                            '+ 200.000',
                          ),
                        ],
                      ),
                      ),
                    )
                    ,Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 4,
                        width: 49,
                        color: kEgyptianBlue.withOpacity(0.1),
                      ),
                    )
                  ],),
              )
             ),
             ), 
        ],
        ),
    ),
    );
  }

  Widget _transaction_list(Color bgColor, String icon, String title, String sub, String amount) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: CircleAvatar(backgroundColor: bgColor,
                                child: Image(image: AssetImage(icon),
                                width: 14,),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(title, style: kBody1.copyWith(color: kLuckyBlueParent),
                                  ),
                                  Text(sub, style: kCaption.copyWith(color: kLightGrey),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(amount, style: kBody1.copyWith(color: kLuckyBlueParent),)
                            ],
                          ),
    );
  }
  Widget _transactionButton(String icon, String Text){
    return Expanded(
      child: Container(
        constraints: BoxConstraints.expand(
          height: 60, 
          ),
          decoration: BoxDecoration(color: kNightBlack, borderRadius: BorderRadius.all(Radius.circular(15),
          ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset(
              icon, 
              width: 24,
              ),
              SizedBox(width: 5,
              ),
          ],
          ),
      ),
    );
  }
}
  
