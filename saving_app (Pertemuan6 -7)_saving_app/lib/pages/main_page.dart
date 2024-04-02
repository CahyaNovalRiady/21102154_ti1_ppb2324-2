import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/home_page.dart';
import 'package:flutter_application_1/pages/on_boarding_page.dart';
import 'package:flutter_application_1/pages/portofolio/portofolio_page.dart';
import 'package:flutter_application_1/pages/profile/profile_page.dart';
import 'package:flutter_application_1/pages/support/support_page.dart';

const kGrey = Color(0xFF888888);

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const nameRoute = '/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  static List<Widget> pages = [
    HomePage(),
    PortofolioPage(),
    SupportPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: pages[selectedIndex],
      bottomNavigationBar: _customBottomNav(),
    );
  }

  Widget _customBottomNav(){
    return Container(
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: kGrey,
              blurRadius: 10,
            )
          ]
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndex,
              onTap: _onItemTapped,
              selectedLabelStyle: kCaption,
              unselectedLabelStyle: kCaption,
              selectedItemColor: kBlueRibbon,
              unselectedItemColor: kDarkGrey,
              items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/Home.png',
                  width: 24,
                  color: selectedIndex == 0 ? kBlueRibbon : kDarkGrey,),
              label: 'Home'),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/Portofolio.png',
                  width: 24,
                  color: selectedIndex == 0 ? kBlueRibbon : kDarkGrey,),
              label: 'Portofolio'),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/Support.png',
                  width: 24,
                  color: selectedIndex == 0 ? kBlueRibbon : kDarkGrey,),
              label: 'Support'),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/Profile.png',
                  width: 24,
                  color: selectedIndex == 0 ? kBlueRibbon : kDarkGrey,),
              label: 'Profil'),
            ],),
          ),
    );
  }
}
  