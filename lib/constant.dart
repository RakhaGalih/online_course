import 'package:flutter/material.dart';

class Constant {
  Color blueAccent = Color(0xFFD1E2FD);
  Color blue = Color(0xFF006EEE);
  Color yellow = Color(0xFFFFBC58);
  Color grey = Color(0xFFA2ADB1);
  Color green = Color(0xFF22B07D);
  Color red = Color(0xFFFF7A7A);
  Color back = Color(0xFFFAFAFA);
  List<String> courseCategories = [
    'About',
    'lesson',
    'Tools',
    'Resource',
    'Review'
  ];
  List<CourseListCard> courseListCards = [
    CourseListCard(title: 'Visual Design Intro', duration: '04:47'),
    CourseListCard(title: 'Design Reference', duration: '03:45'),
    CourseListCard(title: 'Create Moodboard', duration: '03:45'),
    CourseListCard(
        title: 'Wireframe to Visual Design Part 1', duration: '09:03'),
    CourseListCard(
        title: 'Wireframe to Visual Design Part 2', duration: '09:03')
  ];
  List<ArticleCard> articleCards = [
    ArticleCard(
        image: 'images/image 8.png',
        title: 'How to: Work faster as Full Stack Developer',
        category: 'UI Design',
        like: true),
    ArticleCard(
        image: 'images/image 9.png',
        title: 'How to: Digital Art from Sketch',
        category: 'Art Course',
        like: false),
  ];

  List<CategoryCard> categoryCards = [
    CategoryCard(
        icon: 'images/icon_design.png', nama: 'Design', course: '49 Course'),
    CategoryCard(
        icon: 'images/icon_softskill.png',
        nama: 'Soft Skill',
        course: '12 Course'),
    CategoryCard(icon: 'images/icon_art.png', nama: 'Art', course: '50 Course')
  ];
  List<PopularCard> popularCards = [
    PopularCard(
        image: 'images/image 3.png',
        price: 'Free',
        rating: 4016,
        stars: 5,
        title: 'UI Design : Wireframe to Visual Design'),
    PopularCard(
        image: 'images/image 7.png',
        price: 'Free',
        rating: 1055,
        stars: 5,
        title: 'UI Design : Styleguide with Figma')
  ];
}

class CourseListCard {
  late String title;
  late String duration;
  CourseListCard({required this.title, required this.duration});
}

class ArticleCard {
  late String image;
  late String title;
  late String category;
  late bool like;
  ArticleCard(
      {required this.image, required this.title, required this.category, required this.like});
}

class PopularCard {
  late String image;
  late String price;
  late String title;
  late int stars;
  late int rating;

  PopularCard(
      {required this.image,
      required this.price,
      required this.rating,
      required this.stars,
      required this.title});
}

class CategoryCard {
  late String icon;
  late String nama;
  late String course;
  CategoryCard({required this.icon, required this.nama, required this.course});
}
