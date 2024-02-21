import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:sizer/sizer.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dismissible(
        movementDuration: const Duration(milliseconds: 10),
        resizeDuration: const Duration(milliseconds: 10),
        key: UniqueKey(),
        direction: DismissDirection.startToEnd,
        onDismissed: (direction) {
          if (direction == DismissDirection.startToEnd) {
            Navigator.pop(context);
          }
        },
        child: Center(
          child: SizedBox(
            height: 90.0.h,
            width: 90.0.w,
            child: const RiveAnimation.asset(
              'assets/flares/rive_bot.riv',
            ),
          ),
        ),
      ),
    );
  }
}
