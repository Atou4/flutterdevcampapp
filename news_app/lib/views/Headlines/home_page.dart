import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'headline_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    super.key,
  });

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 100, // <-- Use this
        centerTitle: false,
        title: Row(
          children: [
            Text(
              "America",
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: AppColors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            IconButton(
              icon: const Icon(CupertinoIcons.chevron_down),
              color: AppColors.white,
              iconSize: 20,
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  child: Image.network(
                    "https://img.freepik.com/premium-photo/colorful-hot-air-balloons-before-launch-goreme-national-park-cappadocia-turkey_87498-239.jpg?w=1380",
                    fit: BoxFit.fill,
                    height: size.height / 2.25,
                    width: size.width,
                  ),
                ),
                Container(
                  height: size.height / 2.25,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.black.withOpacity(0.3),
                        Colors.black87.withOpacity(0.3),
                        Colors.black54.withOpacity(0.3),
                        Colors.black38.withOpacity(0.3),
                      ],
                      stops: const [0.1, 0.4, 0.6, 0.9],
                    ),
                  ),
                ),
                Positioned(
                  top: 90,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,                
                      children: [
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.grey.withAlpha(150),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Center(
                            child: Text(
                              "News of the day",
                              style:
                                  Theme.of(context).textTheme.caption!.copyWith(
                                        color: AppColors.white,
                                      ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        SizedBox(
                          width: 320,
                          child: Text(
                            "Vip immunization for the us citizens, for the powerful and their cronics in the us sadasdasd.",
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Row(
                          children: [
                            Text(
                              "Learn More",
                              style:
                                  Theme.of(context).textTheme.button!.copyWith(
                                        color: AppColors.white,
                                      ),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.arrow_forward,
                              size: 20,
                            )
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Top Headlines ",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            HeadlineWidget(index: 5,),
          ],
        ),
      ),
    );
  }
}
