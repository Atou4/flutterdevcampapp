import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/models/place.dart';
import 'package:test_app/utils/colors.dart';

class PlacePage extends StatefulWidget {
 final Place city;
 final int index;


  const PlacePage(
      {Key? key,
      required this.city,
      required this.index
      })
      : super(key: key);

  @override
  State<PlacePage> createState() => CityrPageState();
}

class CityrPageState extends State<PlacePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final indexx=widget.index;
    return Scaffold(
      backgroundColor: AppColors.midnightblue,
      appBar: AppBar(
        title: Text(widget.city.placename, style: Theme.of(context).textTheme.headline5!.copyWith(color: AppColors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.chevron_back),
          color: AppColors.white,
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context);
          },
        ),

      ),
      body: SingleChildScrollView(
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: "place$indexx",
              child: Image.network(
                widget.city.placeimage,
                fit: BoxFit.fill,
                height: size.height / 3 ,
                width: size.width,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                        widget.city.placeinfo,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColors.white),
                        textAlign: TextAlign.justify,
                      ),
            ),
          ],
        ),
      ),
    ) /*: const NoConnectionScreen()*/;
  }
}
