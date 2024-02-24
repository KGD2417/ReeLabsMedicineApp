import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pill_pal/pages/product_list.dart';
import 'package:pill_pal/widget/navigation_drawer_widget.dart';

import '../widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

@override
State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late TextEditingController _searchController;
  int selectedCategory = -1;
  List<CategoryData> categories = [
    CategoryData("First Aid", "images/firstAid.png"),
    CategoryData("Tablets", "images/tablet.png"),
    CategoryData("Syrups", "images/syrup2.png"),
    CategoryData("Essentials", "images/essentials1.png"),
    CategoryData("Essentials", "images/essentials1.png"),
    CategoryData("Essentials", "images/essentials1.png"),
  ];
  bool balms = false,
      tablets = false,
      syrup = false,
      essentials = false;

  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

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
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search Products',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  // Perform search or filter operation based on value
                });
              },
            ),
            SizedBox(height: 20,),
            Text("Popular Categories",
              style: AppWidget.subHeaderTextFieldStyle(),
            ),
            SizedBox(height: 20,),
              Container(
                height: 250,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: 6, // Replace with the actual number of items
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategory = index;
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductListPage()));
                        });
                      },
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: selectedCategory == index
                                ? Color(0xFFB784B7)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 2),
                              Image.asset(categories[index].imagePath,
                                  height: 52,
                                  width: 60,
                                  fit: BoxFit.cover),
                              Text(
                                categories[index].categoryText,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  color: selectedCategory == index
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
          ),
          GestureDetector(
            onTap: () {
              balms = false;
              tablets = true;
              syrup = false;
              essentials = false;
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductListPage()));
              setState(() {

              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
                      Image.asset("images/tablet.png", height: 60,
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
          ),
        ],),
    );
  }
}
class CategoryData {
  final String categoryText;
  final String imagePath;

  CategoryData(this.categoryText, this.imagePath);
}