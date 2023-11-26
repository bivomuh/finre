import 'package:Finre/shared/theme.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Widget child;

  const CardWidget({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kWhiteColor,
          border: Border.all(color: kStrokeColor),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: child,
      ),
    );
  }
}
