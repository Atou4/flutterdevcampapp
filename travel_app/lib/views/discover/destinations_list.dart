
import 'package:flutter/material.dart';

import '../../widgets/desination_widget.dart';

// ignore: must_be_immutable
class DestinationsList extends StatelessWidget {
  List cities;
  DestinationsList({Key? key, required this.cities}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 12,
        ),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: cities.length, 
        itemBuilder: (BuildContext context, int index) {
          final city = cities[index];
          return DetinationWidget(
            city: city, index: index,
          );
        },
      ),
    );
  }
}