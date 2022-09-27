
import 'package:flutter/material.dart';
import 'package:recipe_app/data/meals.dart';
import 'package:recipe_app/utils/colors.dart';
import 'package:recipe_app/widgets/mealtype_widget.dart';
class Mealslist extends StatelessWidget {
  const Mealslist({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: meals().tags.length,
        itemBuilder: (BuildContext context, int index) {
              final meal = meals().tags[index];
              return Mealwidget( text: meal.toString(), textcolor: AppColors.white, onpressed: (){}, bordercolor: AppColors.marineblue,buttoncolor: AppColors.marineblue,);
            },
      )
    );
  }
}