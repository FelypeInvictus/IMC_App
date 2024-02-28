import 'package:flutter/material.dart';

titleDrawer({
  required String text,
}) =>
    Text(
      text.toUpperCase(),
      style: const TextStyle(
        fontSize: 20,
      ),
    );
