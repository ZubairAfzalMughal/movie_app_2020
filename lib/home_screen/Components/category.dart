import 'package:flutter/material.dart';
class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List<String> catrgory = [
    "In Cenema",
    "Box Office",
    "Trending",
    "Best Of the week"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catrgory.length,
          itemBuilder: (ctx, index) {
            return buildCategory(index, context);
          }),
    );
  }

  Padding buildCategory(int index, BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                catrgory[index],
                style: Theme.of(context).textTheme.headline6.copyWith(
                    fontWeight: FontWeight.w600,
                    color: selectedIndex == index
                        ? Colors.black
                        : Colors.black.withOpacity(0.4)),
              ),
              Container(
                height: 6.0,
                width: 40.0,
                decoration: BoxDecoration(
                  color:
                      selectedIndex == index ? Colors.red : Colors.transparent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ],
          ),
        ),
      );
}
