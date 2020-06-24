import 'package:flutter/material.dart';

class Genres extends StatelessWidget {
  List<String> genres = [
    "Animated",
    "Action",
    "season",
    "Drama",
    "Web Series"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.0,
      margin: EdgeInsets.only(left: 10.0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (ctx, index) {
            return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
              child: Text(
                genres[index],
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
              ),
            );
          }),
    );
  }
}
