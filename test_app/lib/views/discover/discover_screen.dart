import 'package:flutter/material.dart';
import 'package:test_app/utils/colors.dart';

import '../../data/data.dart';
import '../../widgets/simple_button.dart';
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
        title: Text('Travel App', style: Theme.of(context).textTheme.headline5!.copyWith(color: AppColors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://img.freepik.com/premium-photo/colorful-hot-air-balloons-before-launch-goreme-national-park-cappadocia-turkey_87498-239.jpg?w=1380",
              fit: BoxFit.fill,
              height: size.height / 3 ,
              width: size.width,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainButton(
                    width: 110,
                    text: "Attraction",
                    textcolor: AppColors.white,
                    buttoncolor: AppColors.midnightblue,
                    onpressed: () {},
                    bordercolor: AppColors.white,
                  ),
                  MainButton(
                    width: 110,
                    text: "Places",
                    textcolor: AppColors.white,
                    buttoncolor: AppColors.midnightblue,
                    onpressed: () {},
                    bordercolor: AppColors.white,
                  ),
                  MainButton(
                    width: 110,
                    text: "Hotels",
                    textcolor: AppColors.white,
                    buttoncolor: AppColors.midnightblue,
                    onpressed: () {},
                    bordercolor: AppColors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Popular Destinations ",
                                style: Theme.of(context).textTheme.headline5),
            ),
            
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: size.height,
                child: DestinationsList(cities: citylist,)
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
          ],
        ),
      ),
    ) /*: const NoConnectionScreen()*/;
  }
}
