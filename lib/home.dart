import 'package:flutter/material.dart';
import 'package:online_course/arc.dart';
import 'package:online_course/constant.dart';
import 'package:online_course/page.dart';
import 'package:badges/badges.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'images/image 1.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                Expanded(child: SizedBox()),
                InkWell(onTap: () {}, child: Icon(Icons.search, size: 25,)),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 25, height: 25,
                  child: InkWell(onTap: () {}, child: Stack(children: [Icon(Icons.notifications, size: 25),
                  Align(alignment: Alignment.topRight,child: Container(margin: EdgeInsets.all(3),width: 7, height: 7,decoration: BoxDecoration(shape: BoxShape.circle, color: Constant().red,),))]),),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(70),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                  child: Text(
                    "Want to Study Class\nWhat's Today?",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                CatCard(),
                Pager(name: 'Popular Course'),
                PopCard(),
                Pager(name: 'Articles'),
                Container(height: 250, child: Arc())
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          color: Colors.white,
          height: 72,
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(onTap: () {}, child: Icon(Icons.home, size: 25, color: Constant().blue,)),
              InkWell(onTap: () {}, child: Icon(Icons.apps, size: 25, color: Constant().blueAccent,)),
              InkWell(onTap: () {}, child: Icon(Icons.bookmark, size: 25, color: Constant().blueAccent,)),
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'images/image 1.png',
                    width: 25,
                    height: 25,
                  ),
                ),
          ],),
        )
      ),
    );
  }
}

class Pager extends StatelessWidget {
  String name;
  Pager({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
          Expanded(child: SizedBox()),
          Text(
            'Show all',
            style: TextStyle(color: Color(0xFF006EEE), fontSize: 10),
          )
        ],
      ),
    );
  }
}

class PopCard extends StatelessWidget {
  const PopCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 210,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Constant().popularCards.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.white,
              margin: EdgeInsets.only(
                  left: (index == 0) ? 24 : 15,
                  right:
                      (index == Constant().categoryCards.length - 1) ? 24 : 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => Page2()));
                  },
                  child: Container(
                      height: 210,
                      width: 180,
                      child: Column(
                        children: [
                          Container(
                            width: 180,
                            height: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        Constant().popularCards[index].image),
                                    fit: BoxFit.cover)),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(15, 10, 0, 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      Constant().popularCards[index].price,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Constant().green),
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      Constant().popularCards[index].title,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12),
                                    ),
                                  )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Constant().yellow,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Constant().yellow,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Constant().yellow,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Constant().yellow,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Constant().yellow,
                                        size: 16,
                                      ),
                                      SizedBox(width: 5,),
                                      Text(
                                        '(${Constant().popularCards[index].rating})',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Constant().grey),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            );
          }),
    );
  }
}

class CatCard extends StatelessWidget {
  const CatCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      height: 145,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: Constant().categoryCards.length,
          itemBuilder: (context, index) {
            return Container(
              width: 125,
              margin: EdgeInsets.only(
                  left: (index == 0) ? 24 : 15,
                  right:
                      (index == Constant().categoryCards.length - 1) ? 24 : 0),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(Constant().categoryCards[index].icon),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    Constant().categoryCards[index].nama,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
                  ),
                  Text(
                    Constant().categoryCards[index].course,
                    style: TextStyle(fontSize: 10, color: Constant().grey),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
