
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/utils/colors.dart';
import 'package:recipe_app/views/discover/discover_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav(
      {Key? key,})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNav createState() => _BottomNav();
}

class _BottomNav extends State<BottomNav> {
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      const DiscoverPage(),
    ];
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items:const [
          BottomNavigationBarItem(
            icon:  Icon(CupertinoIcons.home,color: AppColors.white,),
            label: "",
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.favorite_border_outlined,color: AppColors.white),
            label: "",
          ),
          BottomNavigationBarItem(
            icon:  Icon(CupertinoIcons.search,color: AppColors.white,),
            label: "",
          ),
          BottomNavigationBarItem(
            icon:  Icon(CupertinoIcons.person,color: AppColors.white,),
            label: "",
          ),
        ],
      ),
    );
  }
}