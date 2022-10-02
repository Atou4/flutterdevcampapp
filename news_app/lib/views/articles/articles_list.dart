
import 'package:flutter/material.dart';

import 'category_widget.dart';
class Disheslist extends StatelessWidget {
  final List<String> cats;
  const Disheslist({Key? key, required this.cats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: cats.length,
        itemBuilder: (BuildContext context, int index) {
              final cat = cats[index];
              return Categorytab(title: cat,)  ;
            },
      )
    );
  }
}