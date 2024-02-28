import 'package:flutter/material.dart';

subTitleDrawer({
  required String text,
}) =>
    Text(
      text,
      textAlign: TextAlign.justify,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.grey,
        fontStyle: FontStyle.italic,
        
      ),
    );
