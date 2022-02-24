import 'package:flutter/material.dart';
import 'package:online_course/constant.dart';

class Coming extends StatelessWidget {
  const Coming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/paperplane.gif'), fit: BoxFit.cover)),
              ),
            ),
            SizedBox(height: 24,),
            Text(
              'Stay Tuned!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text("This page is in progress. it'll be coming soon.",
                style: TextStyle(color: Constant().grey))
          ],
        ),
      ),
    );
  }
}
