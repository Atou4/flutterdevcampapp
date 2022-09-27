import 'package:flutter/material.dart';

class Mealwidget extends StatefulWidget {
  final String text;
  final Color textcolor;
  final Color? buttoncolor;
  final void Function()? onpressed;
  final Color bordercolor;

  const Mealwidget(
      {Key? key,
      required this.text,
      required this.textcolor,
      this.buttoncolor,
      required this.onpressed,
      required this.bordercolor})
      : super(key: key);

  @override
  State<Mealwidget> createState() => _MealwidgetState();
}

class _MealwidgetState extends State<Mealwidget> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      height: 70,
      width: 70, 
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: widget.buttoncolor,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: widget.bordercolor, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Center(
          child: Text(
            widget.text,
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: widget.textcolor),
          ),
        ),
      ),
    );
  }
}
