import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/articles/categories_list.dart';
import 'package:news_app/widgets/searchbar.dart';

import '../../data/categories_data.dart';
import '../../models/categories.dart';
import '../../utils/colors.dart';
import 'articles_widget.dart';
import 'category_widget.dart';

class Discoverpage extends StatefulWidget {
  const Discoverpage({
    super.key,
  });

  @override
  State<Discoverpage> createState() => DiscoverpageState();
}

class DiscoverpageState extends State<Discoverpage> {
  late List<CategorieModel> categories = <CategorieModel>[]; 

  @override
  void initState() {
    super.initState();
    categories = getCategories(); 
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Text(
              "America",
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            IconButton(
              icon: const Icon(CupertinoIcons.chevron_down),
              color: AppColors.black,
              iconSize: 20,
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                "Discover ",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                  "News from all over the world",
                  style: Theme.of(context).textTheme.caption!.copyWith(color: AppColors.grey),
                ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SearchField(size: size,),
              SizedBox(
                height: size.height * 0.03,
              ),
              Catlist(cats: categories),
              
              SizedBox(
                height: size.height * 0.03,
              ),
              Articleswidget(title: "",),
            ],
          ),
        ),
      ),
    );
  }
}


