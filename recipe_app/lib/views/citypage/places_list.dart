
import 'package:flutter/material.dart';
import 'package:test_app/models/place.dart';

import '../../widgets/place_widget.dart';
class Placeslist extends StatelessWidget {
  final List<Place> places;
  const Placeslist({Key? key, required this.places}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: places.length,
        itemBuilder: (BuildContext context, int index) {
              final place = places[index];
              return Placewidget(place: place, index: index,);
            },
      )
    );
  }
}