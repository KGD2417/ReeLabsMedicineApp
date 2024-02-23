import 'package:flutter/material.dart';

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
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.person_outlined, color:Color(0xFFB784B7)),
                Text("Hello jj",
                  style: AppWidget.boldTextFieldStyle(),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Color(0xFFB784B7),
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.shopping_cart, color: Colors.white,),
                ),
              ],
            ),
            SizedBox(height: 20,),
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
    return Row(
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
              decoration: BoxDecoration(
                  color: balms ? Color(0xFFB784B7) : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.only(
                  left: 12, top: 12, right: 12, bottom: 15),
              // child: Image.asset("images/balm.png", height: 60, width: 60, fit: BoxFit.cover),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("images/firstAid.png", height: 60,
                      width: 60,
                      fit: BoxFit.cover),
                  SizedBox(height: 8),
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
              decoration: BoxDecoration(
                  color: tablets ? Color(0xFFB784B7) : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.only(
                  left: 12, top: 12, right: 12, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("images/medicine.png", height: 60,
                      width: 60,
                      fit: BoxFit.cover),
                  SizedBox(height: 8),
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
              decoration: BoxDecoration(
                  color: syrup ? Color(0xFFB784B7) : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.only(
                  left: 12, top: 12, right: 12, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("images/syrup2.png", height: 60,
                      width: 60,
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
              decoration: BoxDecoration(
                  color: essentials ? Color(0xFFB784B7) : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.only(
                  left: 12, top: 12, right: 12, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("images/essentials1.png", height: 60,
                      width: 60,
                      fit: BoxFit.cover),
                  SizedBox(height: 8),
                  Text(
                      "Essentials",
                      style: AppWidget.categoryTextFieldStyle()
                  ),
                ],),
            ),
          ),
        )
      ],);
  }
}