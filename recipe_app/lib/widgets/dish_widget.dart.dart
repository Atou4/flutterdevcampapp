import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/models/dish.dart';
import 'package:recipe_app/utils/colors.dart';
import 'package:recipe_app/views/recipe/recipe_details.dart';
import 'package:recipe_app/widgets/stars.dart';

class DishWidget extends StatelessWidget {
  final Dish dish;
  final int index;
  const DishWidget({
    Key? key,
    required this.dish, required this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => RecipPage(dish: dish, index: index)));
      },
      child: Stack(
        children: [
          Hero(
             tag: "recipe$index",
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              height: size.height / 3,
              width: size.height / 4.2,
              decoration: BoxDecoration(
                color: Color(int.parse(dish.color)),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(dish.dishname,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w800)),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      color: AppColors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        CupertinoIcons.time_solid,
                        color: AppColors.white,
                        size: 15,
                      ),
                      Text(" ${dish.timetomake} min  ", style: Theme.of(context).textTheme.caption),
                      const Icon(
                        CupertinoIcons.person_solid,
                        color: AppColors.white,
                        size: 15,
                      ),
                      Text("${dish.servings} servings ",
                          style: Theme.of(context).textTheme.caption),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Stars(
                        likes: dish.reviews,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 05,
            child: Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(dish.dishimage),
                    ))),
          ),
        ],
      ),
    );
  }
}
