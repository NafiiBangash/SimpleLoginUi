import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final double? height;
  final double? width;
  final BoxBorder? border;
  final Color? buttonColor;
  final Widget? child;
  const MyButton({
    super.key,
    this.height,this.width,this.border,this.buttonColor,this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: border,
        color: buttonColor,
      ),
      child: Center(child: child),
    );
  }
}
