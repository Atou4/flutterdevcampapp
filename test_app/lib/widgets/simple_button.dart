import 'package:flutter/material.dart';

class MainButton extends StatefulWidget {
  final String text;
  final Color textcolor;
  final Color? buttoncolor;
  final void Function()? onpressed;
  final Color bordercolor;
  final double width;

  const MainButton(
      {Key? key,
      required this.width,
      required this.text,
      required this.textcolor,
      this.buttoncolor,
      required this.onpressed,
      required this.bordercolor})
      : super(key: key);

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onpressed,
      child: AnimatedContainer( 
        alignment: Alignment.center,
        duration: const Duration(milliseconds: 300),
        height: 50,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.buttoncolor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: widget.bordercolor, width: 1),
        ),
        child: Text(
          widget.text,
          style: Theme.of(context)
              .textTheme
              .button!
              .copyWith(color: widget.textcolor),
        ),
      ),
    );
  }
}
