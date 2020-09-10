import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          isDense: true,
          border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
          filled: true,
          fillColor: Colors.white,
          hintText: "Search",
          prefixIcon: Icon(Icons.search), 
          suffixIcon: Icon(Icons.view_day)
        ),
        
      ),
    );
  }
}