import 'package:flutter/material.dart';

Container location = Container(
  padding: EdgeInsets.only(left: 50),
  color: Colors.white,
  child: Row(
    children: const [
      Icon(Icons.location_pin),
      Text("Toronto, Canada")
    ],
  ),
);