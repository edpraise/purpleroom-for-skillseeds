import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
      BoxShadow(
        color: Colors.white.withOpacity(0.5),
        spreadRadius: 0,
        blurRadius: 9,
        offset: Offset(1, 10), // changes position of shadow
      ),
    ],
        ),
        child: TextField(
          decoration: InputDecoration(  
            isDense: true,
            border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30.0),
                    ),
                  ),
            filled: true,
            fillColor: Colors.white,
            hintText: "Search",
            prefixIcon: Icon(Icons.search), 
            suffixIcon: Icon(Icons.view_day),
          ),
          
        ),
      ),
    );
  }
}