import 'package:flutter/material.dart';
import 'package:movie_app_2020/home_screen/Components/category.dart';
import 'package:movie_app_2020/home_screen/Components/demo_pages.dart';
import 'package:movie_app_2020/home_screen/Components/genres.dart';
import 'package:movie_app_2020/models/movie.dart';
import 'dart:math' as Math;
class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CategoryList(),
        Genres(),
        MoviesPages(),
      ],
    );
  }
}


class MoviesPages extends StatefulWidget {
  @override
  _MoviesPagesState createState() => _MoviesPagesState();
}

class _MoviesPagesState extends State<MoviesPages> {
  int initialpage = 1;
  PageController pageController;
  @override
  void initState() {
    pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initialpage,
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: AspectRatio(
        aspectRatio: 5 / 5,
        child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                initialpage = value;
              });
            },
            physics: ClampingScrollPhysics(),
            controller: pageController,
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (ctx, index) {
              return buildMovieContent(index);
            }),
      ),
    );
  }

  Widget buildMovieContent(int index) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (ctx, child) {
        double value=0;
        if(pageController.position.haveDimensions){
          value=index-pageController.page;

          value=(value*0.038).clamp(-1, 1);
        }
        return AnimatedOpacity(
          duration: Duration(milliseconds: 350),
          opacity: initialpage==index?1:0.4,
                  child: Transform.rotate(
            angle: Math.pi*value,
            child: DemoMovie(
              movie: movies[index],
            ),
          ),
        );
      },
    );
  }
}
