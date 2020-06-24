import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app_2020/detail/components/backdropRating.dart';
import 'package:movie_app_2020/detail/components/buildgenre.dart';
import 'package:movie_app_2020/detail/components/movieTitle.dart';
import 'package:movie_app_2020/home_screen/Components/genres.dart';
import 'package:movie_app_2020/models/movie.dart';

class DetailBody extends StatelessWidget {
  final Movie movie;

  const DetailBody({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        BackDropRating(size: size, movie: movie),
        MovieTitle(movie: movie),
        GenreCard(movie: movie),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          child: Text(
            "Summary",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Text(
          "${movie.plot}",
          style: TextStyle(color: Colors.black38),
        ),
        Text(
          "Cast & Crew",
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: Colors.black),
        ),
        SizedBox(
          height: 5.0,
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movie.cast.length,
              itemBuilder: (ctx, index) {
                return SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        height: 50.0,
                        width: 50.0,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage(movie.cast[index]['image']),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        "${movie.cast[index]['orginalName']}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
