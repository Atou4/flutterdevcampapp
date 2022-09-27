
import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/dish_widget.dart.dart';

import '../../models/dish.dart';
class Disheslist extends StatelessWidget {
  final List<Dish> dishes;
  const Disheslist({Key? key, required this.dishes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: dishes.length,
        itemBuilder: (BuildContext context, int index) {
              final dish = dishes[index];
              return  DishWidget(dish: dish, index: index,);
            },
      )
    );
  }
}