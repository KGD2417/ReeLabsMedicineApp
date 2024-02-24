import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pill_pal/widget/navigation_drawer_widget.dart';

import '../widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

@override
State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool balms = false,
      tablets = false,
      syrup = false,
      essentials = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text("PillPal",
              style: AppWidget.headerTextFieldStyle(),
            ),
            Text("By Reelabs India",
              style: AppWidget.tagLineTextFieldStyle(),
            ),
            SizedBox(height: 20,),
            Text("Popular Categories",
              style: AppWidget.subHeaderTextFieldStyle(),
            ),
            SizedBox(height: 20,),
            showItems(),
          ],
      ),
      ),
    );
  }

  Widget showItems() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          GestureDetector(
            onTap: () {
              balms = true;
              tablets = false;
              syrup = false;
              essentials = false;
              setState(() {
      
              });
            },
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: balms ? Color(0xFFB784B7) : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.only(
                    left: 12, top: 12, right: 12, bottom: 2),
                // child: Image.asset("images/balm.png", height: 60, width: 60, fit: BoxFit.cover),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/firstAid.png", height: 60,
                        width: 70,
                        fit: BoxFit.cover),
                    SizedBox(height: 8, width:20,),
                    Text(
                        "First Aid",
                        style: AppWidget.categoryTextFieldStyle()
                    ),
                  ],),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              balms = false;
              tablets = true;
              syrup = false;
              essentials = false;
              setState(() {
      
              });
            },
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: tablets ? Color(0xFFB784B7) : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.only(
                    left: 12, top: 12, right: 12, bottom: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/medicine.png", height: 60,
                        width: 70,
                        fit: BoxFit.cover),
                    SizedBox(height: 8, width: 20,),
                    Text(
                        "Tablets",
                        style: AppWidget.categoryTextFieldStyle()
                    ),
                  ],),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              balms = false;
              tablets = false;
              syrup = true;
              essentials = false;
              setState(() {
      
              });
            },
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: syrup ? Color(0xFFB784B7) : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.only(
                    left: 12, top: 12, right: 12, bottom: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/syrup2.png", height: 60,
                        width: 70,
                        fit: BoxFit.cover),
                    SizedBox(height: 8),
                    Text(
                        "Syrups",
                        style: AppWidget.categoryTextFieldStyle()
                    ),
                  ],),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              balms = false;
              tablets = false;
              syrup = false;
              essentials = true;
              setState(() {
      
              });
            },
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: essentials ? Color(0xFFB784B7) : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.only(
                    left: 12, top: 12, right: 12, bottom: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/essentials1.png", height: 60,
                        width: 70,
                        fit: BoxFit.cover),
                    SizedBox(height: 10),
                    Text(
                        "Essentials",
                        style: AppWidget.categoryTextFieldStyle()
                    ),
                  ],),
              ),
            ),
          )
        ],),
    );
  }
}