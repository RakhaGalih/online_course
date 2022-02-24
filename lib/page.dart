import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:online_course/constant.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.arrow_back_ios, size: 20),
                  ),
                  Expanded(
                      child: Container(
                    child: Center(
                        child: Text(
                      'Course Details',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    )),
                  )),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.bookmark, size: 20,),
                  ),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(70)),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              width: width,
                              height: 203,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                       'images/image 2.png'),
                                    fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'UI Design : Wireframe to Visual Design',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, image: DecorationImage(
                                    image: AssetImage(
                                       'images/image 10.png'),
                                    fit: BoxFit.cover)),
                              ),
                              Expanded(
                                  child: Container(
                                padding: EdgeInsetsDirectional.only(start: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Shem Bizo',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('Mentor UI Designer',
                                        style: TextStyle(
                                            color: Constant().grey,
                                            fontSize: 10))
                                  ],
                                ),
                              )),
                              InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    )),
                Container(
                  height: 60,
                  child: CourseCategory(),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Course List',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        height: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: Constant().courseListCards.length,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Container(
                                    width: 25,
                                    height: 25,
                                    margin: EdgeInsets.all(15),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Constant().blueAccent,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text('${index + 1}',
                                        style:
                                            TextStyle(color: Constant().blue, fontSize: 10, fontWeight: FontWeight.w600)),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Constant().courseListCards[index].title,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      ),
                                      Text(
                                          Constant()
                                              .courseListCards[index]
                                              .duration,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Constant().grey)),
                                    ],
                                  )
                                ],
                              );
                            }),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          height: 72,
          child: Stack(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: 24),
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Price',
                        style: TextStyle(color: Constant().grey, fontSize: 12)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Free',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Constant().green),
                    ),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: width * 0.6,
                    child: Center(
                        child: Text('Start Course',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.white))),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(30.0)),
                        color: Constant().blue),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class CourseCategory extends StatefulWidget {
  const CourseCategory({Key? key}) : super(key: key);

  @override
  _CourseCategoryState createState() => _CourseCategoryState();
}

class _CourseCategoryState extends State<CourseCategory> {
  int _selectedFilter = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: Constant().courseCategories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
                left: (index == 0) ? 24 : 10,
                right:
                    (index == Constant().courseCategories.length - 1) ? 24 : 0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedFilter = index;
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: (index == _selectedFilter)
                        ? Constant().blueAccent
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  Constant().courseCategories[index],
                  style: TextStyle(
                    fontSize: 12,
                      color: (index == _selectedFilter)
                          ? Constant().blue
                          : Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          );
        });
  }
}
