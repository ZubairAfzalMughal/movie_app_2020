import 'package:flutter/material.dart';
import 'package:movie_app_2020/models/movie.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 36.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra.length,
          itemBuilder:(ctx,index){
            return Container(
              padding: EdgeInsets.symmetric(horizontal:10.0),
              margin: EdgeInsets.only(left:10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black38
                ),
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Text(movie.genra[index]),
            );
          }),
      ),
    );
  }
}

