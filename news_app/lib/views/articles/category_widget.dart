import 'package:flutter/material.dart';
import '../../utils/colors.dart';
class Categorytab extends StatelessWidget {
  final String title;
  const Categorytab({
    Key? key,
    required this.title, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 120,
          decoration: BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(25.0),
            border: Border.all(width: 1, color: AppColors.darkgrey),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
             title, 
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
          ),
        );
  }
}