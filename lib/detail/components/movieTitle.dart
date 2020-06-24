import 'package:flutter/material.dart';
import 'package:movie_app_2020/models/movie.dart';

class MovieTitle extends StatelessWidget {
  const MovieTitle({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                movie.title,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "${movie.year}",
                    style: TextStyle(color: Colors.black38),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "PG=13",
                    style: TextStyle(color: Colors.black38),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "2h 22min",
                    style: TextStyle(color: Colors.black38),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 70.0,
          ),
          SizedBox(
            height: 50.0,
            width: 52.0,
            child: FlatButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Colors.red.withOpacity(0.6),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
