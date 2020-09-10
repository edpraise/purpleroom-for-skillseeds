import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final Function(String) validator;

  const CustomInput({
    Key key,
    this.label,
    this.hint,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(label,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),
              textAlign: TextAlign.start, ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextFormField(
            controller: controller,
            validator: validator,
            decoration: InputDecoration(
              isDense: true,
              hintText: hint,
              hintStyle: TextStyle(color: Colors.white, fontSize: 12),
              border: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(10.0),
                ),
              ),
              filled: true,
              fillColor: Color(0xFF410255),

              


            ),
          
          ),
        ),
      ],
    );
  }
}
