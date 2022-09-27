import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/utils/colors.dart';
import 'package:recipe_app/widgets/stars_wide.dart';

import '../../models/dish.dart';
import 'directions/directions_list.dart';
import 'ingredient/ingredient_list.dart';

class RecipPage extends StatefulWidget {
  final Dish dish;
  final int index;
  const RecipPage({super.key, required this.dish, required this.index});

  @override
  State<RecipPage> createState() => _RecipPageState();
}

class _RecipPageState extends State<RecipPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        elevation: 5.0,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
              color: AppColors.backgroundblue,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined,
                color: AppColors.backgroundblue),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.search,
              color: AppColors.backgroundblue,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
              color: AppColors.backgroundblue,
            ),
            label: "",
          ),
        ],
      ),
      body: CustomScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          slivers: [
            SliverAppBar(
                expandedHeight: size.height / 2,
                floating: true,
                pinned: true,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                backgroundColor: Color(int.parse(widget.dish.color)),
                leading: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: IconButton(
                    icon: const Icon(CupertinoIcons.chevron_back),
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
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.05,
                            ),
                            SizedBox(
                              width: 100,
                              child: Text(
                                widget.dish.dishname,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(fontWeight: FontWeight.w900),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(
                              width: 100,
                              child: Divider(
                                color: AppColors.white,
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  const Icon(
                                    CupertinoIcons.time_solid,
                                    color: AppColors.white,
                                    size: 20,
                                  ),
                                  Text(" ${widget.dish.timetomake} min  ",
                                      style:
                                          Theme.of(context).textTheme.button),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  const Icon(
                                    CupertinoIcons.person_solid,
                                    color: AppColors.white,
                                    size: 20,
                                  ),
                                  Text(" ${widget.dish.servings} servings ",
                                      style:
                                          Theme.of(context).textTheme.button),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  const Icon(
                                    CupertinoIcons.flame_fill,
                                    color: AppColors.white,
                                    size: 20,
                                  ),
                                  Text(" ${widget.dish.calories} calories  ",
                                      style:
                                          Theme.of(context).textTheme.button),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.03,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Starswide(
                                    likes: widget.dish.reviews,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 05,
                        bottom: 60,
                        child: Container(
                            width: 220.0,
                            height: 220.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(widget.dish.dishimage),
                                ))),
                      ),
                    ],
                  ),
                )),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ingedients",
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    color: AppColors.backgroundblue,
                                    fontWeight: FontWeight.w800)),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Column(children: [
                          IngredientsList(
                            extendedIngredients: widget.dish.directions,
                          )
                        ]),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Text("Directions",
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    color: AppColors.backgroundblue,
                                    fontWeight: FontWeight.w800)),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Column(children: [
                          Directionslist(
                            directions: widget.dish.ingredients,
                          )
                        ]),
                      ],
                    ),
                  )
                ],
              ),
            )
          ]),
    );
  }
}
