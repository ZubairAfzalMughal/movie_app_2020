import 'package:flutter/material.dart';
import 'package:movie_app_2020/detail/components/body.dart';
import 'package:movie_app_2020/models/movie.dart';

class Detial extends StatelessWidget {
  final Movie movie;
  Detial({
    this.movie
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:DetailBody(movie: movie,),
    );
  }
}