import 'package:flutter/material.dart';
// ignore: camel_case_types
class Castom_TextField extends StatelessWidget {

   final String hint;

   Castom_TextField({Key? key, required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: TextField(
        decoration: InputDecoration(
            hintText: hint,
            fillColor: Colors.white,
            filled: true
        ),
      ),
      decoration: const BoxDecoration(

          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurRadius: 25,
                offset: Offset(0,5)
            ),

          ]
      ),
    );
  }
}
