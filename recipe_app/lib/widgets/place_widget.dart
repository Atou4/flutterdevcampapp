import 'package:flutter/material.dart';

import '../models/place.dart';
import '../utils/colors.dart';
import '../views/placepage/place_screen.dart';

class Placewidget extends StatelessWidget {
  const Placewidget({Key? key, required this.place,required this.index}) : super(key: key);
  final Place place;
   final int index;

  get kIconSizeBig => null;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => PlacePage(city: place,index:index)));
        },
      child: Column(
        children: [
          Hero(
            tag: "place$index",
            child: Container(
                margin: const EdgeInsets.only(left: 20),
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(place.placeimage),
                    ))),
          ),
          const SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              place.placename,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(color: AppColors.white),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
