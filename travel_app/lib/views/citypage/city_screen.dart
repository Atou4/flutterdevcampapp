import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/models/city.dart';
import 'package:test_app/utils/colors.dart';
import 'package:test_app/views/citypage/places_list.dart';

class CityPage extends StatefulWidget {
 final City city;
 final int index;


  const CityPage(
      {Key? key,
      required this.city,
      required this.index
      })
      : super(key: key);

  @override
  State<CityPage> createState() => CityrPageState();
}

class CityrPageState extends State<CityPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final indexx=widget.index;
    return Scaffold(
      backgroundColor: AppColors.midnightblue,
      appBar: AppBar(
        title: Text(widget.city.cityName, style: Theme.of(context).textTheme.headline5!.copyWith(color: AppColors.white)),
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
              tag: "city$indexx",
              child: Image.network(
                widget.city.cityImage,
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
              child: Text("Popular Places ",
                                style: Theme.of(context).textTheme.headline5!.copyWith(color: AppColors.white),)
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SizedBox(
              height: 100,
              child: Placeslist( places: widget.city.popularplaces,)
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Information",
                                style: Theme.of(context).textTheme.headline5!.copyWith(color: AppColors.white)),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                        widget.city.cityInfo,
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
