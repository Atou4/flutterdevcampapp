import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/utils/colors.dart';
import 'destinations_list.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(CupertinoIcons.text_justifyleft),
          color: AppColors.white,
          iconSize: 30,
          onPressed: () {
          },
        ),
        actions: [
           IconButton(
          icon: const Icon(Icons.notifications_none_outlined),
          color: AppColors.white,
          iconSize: 30,
          onPressed: () {
          },
        ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text("Hi, Connor ",
                   style: Theme.of(context).textTheme.bodyText1),
                   Text("What do you want to cook today ",
                   style: Theme.of(context).textTheme.headline5),
              SizedBox(
                height: size.height * 0.03,
              ),
               Text("Most Popular Recipes ",
                                 style: Theme.of(context).textTheme.headline6),
              SizedBox(
                height: size.height * 0.03,
              ),
              SizedBox(
                height: size.height,
                child: DestinationsList(cities: citylist,)
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SizedBox(
                height: size.height,
                child: DestinationsList(cities: citylist,)
              ),
              IconButton(
          icon: const Icon(Icons.tune),
          color: AppColors.white,
          iconSize: 30,
          onPressed: () {
          },
        ),
            ],
          ),
        ),
      ),
    ) /*: const NoConnectionScreen()*/;
  }
}
