import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app_2020/detail/home_detail.dart';
import 'package:movie_app_2020/models/movie.dart';

class DemoMovie extends StatelessWidget {
  final Movie movie;
  DemoMovie({this.movie});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return Detial(movie: movie,);
        }));
      },
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(movie.poster)),
                ),
              ),
            ),
            Text(
              movie.title,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  'assets/icons/star_fill.svg',
                  height: 20.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(movie.rating.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
