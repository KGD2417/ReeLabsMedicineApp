import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:pill_pal/pages/profile.dart';
import 'package:pill_pal/pages/some.dart';

import '../widget/navigation_drawer_widget.dart';
import 'home.dart';
import 'orders.dart';

class BottomNav extends StatefulWidget{
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Profile profile;
  late Orders orders;
  late Some some;

  @override
  void initState(){
    homepage = Home();
    profile = Profile();
    orders = Orders();
    pages = [homepage, orders,profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Guest"),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
          ],
      ),
      drawer: NavigationDrawerWidget(),
      bottomNavigationBar: CurvedNavigationBar (
        height:65,
          backgroundColor: Colors.white,
          color: Color(0xFFB784B7),
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index){
          setState(() {
            currentTabIndex= index;
          });
          },
          items: [
              Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
              Icon(
                Icons.person_outlined,
                color: Colors.white,
              ),
      ]),
      body: pages[currentTabIndex],
    );
  }
}