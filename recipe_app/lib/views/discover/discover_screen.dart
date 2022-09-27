import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipe_app/utils/colors.dart';
import 'package:recipe_app/views/discover/dishes_list.dart';
import 'package:recipe_app/views/discover/meals_list.dart';
import 'package:recipe_app/widgets/searchbar.dart';

import '../../models/dish.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  List<Dish> _dishes = <Dish>[];

  Future<List<Dish>> getRecipes() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    final list = (data as List<dynamic>).map((e) {
      return Dish.fromJson(e as Map<String, dynamic>);
    });
    return list.toList();
  }

  void _populatedishes() async {
    final dishes = await getRecipes();
    setState(() {
      _dishes = dishes;
    });
  }

   @override
  initState() {
    super.initState();
    _populatedishes();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: IconButton(
            icon: const Icon(CupertinoIcons.text_justifyleft),
            color: AppColors.white,
            iconSize: 30,
            onPressed: () {},
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              icon: const Icon(Icons.notifications_none_outlined),
              color: AppColors.white,
              iconSize: 30,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              Text("Hi, Connor ", style: Theme.of(context).textTheme.bodyText1),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "What do you want to cook today? ",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SearchField(size: size),
              SizedBox(
                height: size.height * 0.03,
              ),
              Text("Most Popular Recipes ",
                  style: Theme.of(context).textTheme.headline6),
              SizedBox(
                height: size.height * 0.03,
              ),
              SizedBox(
                  height: size.height / 3,
                  child: Disheslist(
                    dishes: _dishes,
                  )),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.tune),
                    color: AppColors.white,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  const Expanded(
                    child: SizedBox(height: 60, child: Mealslist()),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
