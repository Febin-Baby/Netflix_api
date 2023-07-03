import 'package:bloc_learn/core/constants.dart';
import 'package:flutter/material.dart';

class appBarWidget extends StatelessWidget {
  const appBarWidget({super.key, required this.tittle});
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          tittle,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
        ),
        kwidth,
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
      ],
    );
  }
}
