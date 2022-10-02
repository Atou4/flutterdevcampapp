import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/utils/colors.dart';

class HeadlineWidget extends StatelessWidget {
  final int index;
  const HeadlineWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                child: Image.network(
                  "https://img.freepik.com/premium-photo/colorful-hot-air-balloons-before-launch-goreme-national-park-cappadocia-turkey_87498-239.jpg?w=1380",
                  fit: BoxFit.fill,
                  height: 125,
                  width: size.width * 0.5,
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              SizedBox(
                width: size.width * 0.5,
                child: Text(
                  "Biden called saudi arabia idk what",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              Text(
                  "4 hours ago",
                  style: Theme.of(context).textTheme.caption!.copyWith(color: AppColors.grey),
                ),
               Text(
                  "By David e.Sange",
                  style: Theme.of(context).textTheme.caption!.copyWith(color: AppColors.grey),
                ), 
            ],
          ),
        ));
  }
}
