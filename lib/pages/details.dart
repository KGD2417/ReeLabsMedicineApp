import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Icon(Icons.arrow_back_ios_new_outlined, color: Color(0xFFB784B7),)
          ],
        ),
      ),
    );
  }
}
