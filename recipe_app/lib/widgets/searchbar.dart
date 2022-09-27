import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/utils/colors.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height / 15,
      width: widget.size.width,
      child: TextField(
        style: Theme.of(context).textTheme.subtitle1,
        maxLines: 1,
        cursorColor: const Color(0xFF151624),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.grey,
            ),
          ),
          hintText: "Search recipes",
          hintStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: AppColors.grey,
              ),
          filled: true,
          fillColor: AppColors.white,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppColors.grey,
              )),
          prefixIcon: const Icon(
            CupertinoIcons.search,
            color: AppColors.grey,
            size: 20,
          ),
        ),
      ),
    );
  }
}
