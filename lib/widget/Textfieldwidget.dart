// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget profiles(title, value, hintname, board, {limit = 70}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 1),
          child: Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              title,
              style: TextStyle(color: Color(0xFFf69b03), fontSize: 15),
            ),
            alignment: Alignment.topLeft,
          ),
        ),
        SizedBox(
          height: 40,
          child: TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(limit),
            ],
            keyboardType: board,
            controller: value,
            style: TextStyle(color: Colors.white, fontSize: 10),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              fillColor: Colors.white,
              // ignore: prefer_const_constructors
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 1, color: Color(0xFFffffff)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: Color(0xFFffffff),
                ),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
              hintText: "$hintname",
              hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(
                  0xFF9b9b9b,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }