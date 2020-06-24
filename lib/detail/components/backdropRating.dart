import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app_2020/models/movie.dart';

class BackDropRating extends StatelessWidget {
  const BackDropRating({
    Key key,
    @required this.size,
    @required this.movie,
  }) : super(key: key);

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.4 - 50,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(50.0)),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(movie.backdrop))),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: size.width * 0.9,
              height: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    bottomLeft: Radius.circular(50.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 50.0,
                    color: Colors.white.withOpacity(0.4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset("assets/icons/star_fill.svg"),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(text: "${movie.rating}/"),
                            TextSpan(text: "10\n"),
                            TextSpan(
                              text: "150,220",
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // For Rating
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset('assets/icons/star.svg'),
                      Text(
                        "Rate",
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          "${movie.metascoreRating}",
                          style: TextStyle(
                              color: Colors.white, fontSize: 10.0),
                        ),
                      ),
                      Text(
                        "MetaScore Rating",
                        style: TextStyle(fontSize: 10.0),
                      ),
                      Text(
                        "62 Critical Reviews",
                        style: TextStyle(
                            color: Colors.black26, fontSize: 12.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: BackButton(
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}
