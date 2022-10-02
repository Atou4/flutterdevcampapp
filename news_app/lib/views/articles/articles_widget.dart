import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class Articleswidget extends StatelessWidget {
  final String title;
  const Articleswidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
          child: Image.network(
            "https://img.freepik.com/premium-photo/colorful-hot-air-balloons-before-launch-goreme-national-park-cappadocia-turkey_87498-239.jpg?w=1380",
            fit: BoxFit.fill,
            height: 80,
            width: 80,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Biden called saudi arabia idk what",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(fontWeight: FontWeight.bold),
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                ),
                const SizedBox(
                height: 10,
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          CupertinoIcons.time,
                          color: AppColors.grey,
                          size: 15,
                        ),
                        
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4 hours ago",
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: AppColors.grey),
                    ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                      CupertinoIcons.person,
                      color: AppColors.grey,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "By adil rau",
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: AppColors.grey),
                    ),
                      ],
                    ),
                    
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
