import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:test_app/utils/colors.dart';

class DetinationWidget extends StatelessWidget {
  final String imgpath;
  final String cityname;
  const DetinationWidget({
    Key? key,
    required this.imgpath,
    required this.cityname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(imgpath),
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
                  cityname,
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
    );
  }
}
