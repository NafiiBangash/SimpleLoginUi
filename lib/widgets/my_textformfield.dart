import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {
  final String title;
  final String hint;
  final IconData iconData;
  final bool obscureText;
  final Widget? suffixIcon;
  const MyTextFormField({
    super.key,required this.title,required this.hint,
    required this.iconData,this.obscureText = false,this.suffixIcon,
  });

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(widget.title,style: const TextStyle(fontSize: 14.0,color: Colors.grey),),
          const SizedBox(height: 5.0),
          TextFormField(
            obscureText: widget.obscureText,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                    color: Colors.grey
                ),
              ),
              prefixIcon: Icon(widget.iconData),
              hintText: widget.hint,
              suffixIcon: widget.suffixIcon
            ),
          ),
        ],
      ),
    );
  }
}
