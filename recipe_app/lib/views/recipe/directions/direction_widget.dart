import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
class DirectionsWidget extends StatelessWidget {
  const DirectionsWidget(
      {super.key, required this.direction, required this.number});
  final String direction;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$number',
             style:   Theme.of(context).textTheme.button!.copyWith(color: Colors.orange[200]),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              direction,
              style:   Theme.of(context).textTheme.button!.copyWith(color: AppColors.backgroundblue),
            ),
          ),
        ],
      ),
    );
  }
}