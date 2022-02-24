import 'package:flutter/material.dart';
import 'package:online_course/coming.dart';
import 'package:online_course/constant.dart';
import 'package:online_course/page.dart';

class Arc extends StatelessWidget {
  const Arc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
              children: List.generate(
                  Constant().articleCards.length,
                  (index) => ArticleWidget(
                        index: index,
                      ))),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ArticleWidget extends StatefulWidget {
  late int index;
  ArticleWidget({Key? key, required this.index}) : super(key: key);

  @override
  _ArticleWidgetState createState() => _ArticleWidgetState(index: index);
}

class _ArticleWidgetState extends State<ArticleWidget> {
  late int index;
  List<ArticleCard> articleCardsWidget = Constant().articleCards;
  _ArticleWidgetState({required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(top: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, new MaterialPageRoute(builder: (context) => Coming()));
          },
          child: Container(
            height: 86,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  width: 80,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(articleCardsWidget[widget.index].image), fit: BoxFit.cover)),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            articleCardsWidget[widget.index].title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 12),
                          ),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          articleCardsWidget[widget.index].category,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style:
                              TextStyle(fontSize: 10, color: Constant().grey),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 15, 15),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          articleCardsWidget[widget.index].like =
                              !articleCardsWidget[widget.index].like;
                        });
                      },
                      icon: Icon(
                        (articleCardsWidget[widget.index].like)
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        size: 17,
                        color: (articleCardsWidget[widget.index].like)
                            ? Constant().red
                            : Constant().grey,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
