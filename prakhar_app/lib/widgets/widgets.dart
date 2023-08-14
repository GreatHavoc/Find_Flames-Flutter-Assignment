import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
    labelStyle: TextStyle(color: Color.fromARGB(255, 124, 111, 118)),
    focusedBorder:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
    enabledBorder:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
    errorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: Color.fromARGB(255, 235, 190, 190), width: 2)));
