import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Project {
  final String title;
  final List<String> imgPaths;
  Project({
    required this.title,
    required this.imgPaths,
  });

  @override
  String toString() => 'Project(title: $title, imgPaths: $imgPaths)';

  @override
  bool operator ==(covariant Project other) {
    if (identical(this, other)) return true;

    return other.title == title && listEquals(other.imgPaths, imgPaths);
  }

  @override
  int get hashCode => title.hashCode ^ imgPaths.hashCode;
}

List<Project> myProjects = [
  Project(title: 'Movie App', imgPaths: [
    'assets/images/projects_img/movie_1.png',
    'assets/images/projects_img/movie_2.png',
    'assets/images/projects_img/movie_3.png',
    'assets/images/projects_img/movie_4.png',
  ]),
    
  Project(title: 'Smart Home SAF', imgPaths: [
    'assets/images/projects_img/smart_home_1.png',
    'assets/images/projects_img/smart_home_2.png',
    'assets/images/projects_img/smart_home_3.png',
    'assets/images/projects_img/smart_home_4.png',

  ]),
  Project(title: 'Food Delivery', imgPaths: [
    'assets/images/projects_img/food_delivery_1.png',
    'assets/images/projects_img/food_delivery_2.png',
    'assets/images/projects_img/food_delivery_3.png',
    'assets/images/projects_img/food_delivery_4.png'
  ]),

  Project(title: 'Uber driver', imgPaths: [
    'assets/images/projects_img/uber_1.png',
    'assets/images/projects_img/uber_2.png',
    'assets/images/projects_img/uber_3.png',
    'assets/images/projects_img/uber_4.png'
  ]),  
  Project(title: 'Streaming App', imgPaths: [
    'assets/images/projects_img/streaming_1.png',
    'assets/images/projects_img/streaming_2.png',
  ]),  

    Project(title: 'Puppy dress shop', imgPaths: [
    'assets/images/projects_img/puppy_1.png',
    'assets/images/projects_img/puppy_2.png',
  ]),  

];
