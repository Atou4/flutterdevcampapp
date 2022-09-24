

import 'package:flutter/material.dart';
import 'package:test_app/models/city.dart';
import 'package:test_app/utils/colors.dart';
import 'package:test_app/views/citypage/city_screen.dart';

class DetinationWidget extends StatelessWidget {
  final City city;
  final int index;
  const DetinationWidget({
    Key? key,
    required this.city,
    required this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => CityPage(city: city,index:index)));
        },
      child: Hero(
        tag: "city$index",
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: NetworkImage(city.cityImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              width: size.width,
              color: AppColors.midnightblue,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    city.cityName,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: AppColors.white,
                        ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
