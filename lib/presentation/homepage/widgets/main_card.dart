import 'package:bloc_learn/core/constants.dart';
import 'package:flutter/material.dart';

Container mainCard() {
  return Container(
    width: 150,
    height: 250,
    decoration: BoxDecoration(
      borderRadius: kreadius,
      image: const DecorationImage(
        image: NetworkImage(dummyUrl),
        fit: BoxFit.cover,
      ),
    ),
  );
}
