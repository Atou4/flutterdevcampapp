import 'package:flutter/material.dart';
import 'package:recipe_app/views/recipe/directions/direction_widget.dart';
class Directionslist extends StatelessWidget {
  final List<String> directions;
  const Directionslist({Key? key, required this.directions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: directions.length,
        itemBuilder: (BuildContext context, int index) {
          final direction = directions[index];
          return DirectionsWidget(direction: direction, number: index);
        },
      ),
    );
  }
}