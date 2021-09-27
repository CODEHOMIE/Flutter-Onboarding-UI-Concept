import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  final bool isActive;
  const SlideDots(Key? key, this.isActive) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.3),
      height: isActive ? 10 : 6,
      width: isActive ? 10 : 6,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.grey,
        border: isActive
            ? Border.all(color: const Color(0xff927DFF), width: 2.0)
            : Border.all(color: Colors.transparent, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
