import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.hint,
  });
  final String hint ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(12)),
        hint:Text(
          hint,
          style: TextStyle(color: Colors.grey.withAlpha(100), fontSize: 17,fontFamily: 'saira'),
        ),
      ),
    );
  }
}
