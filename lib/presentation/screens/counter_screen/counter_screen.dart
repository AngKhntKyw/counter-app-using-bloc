import 'package:counter_app/presentation/screens/counter_screen/widgets/animated_circle.dart';
import 'package:counter_app/presentation/screens/counter_screen/widgets/counter_slider.dart';
import 'package:counter_app/presentation/screens/counter_screen/widgets/counter_value.dart';
import 'package:counter_app/presentation/screens/counter_screen/widgets/plasma_background.dart';
import 'package:counter_app/presentation/screens/counter_screen/widgets/theme_switch.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const PlasmaBackground(),
          Positioned(
            top: 5.h,
            right: 10.w,
            child: const ThemeSwitch(),
          ),
          Positioned(
            top: 10.0.h,
            child: const Stack(
              alignment: Alignment.center,
              children: [
                AnimatedCircle(),
                CounterValue(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => Navigator.pushNamed(context, 'second'),
                child: Text(
                  "Second Screen",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0.sp,
                      ),
                ),
              ),
              const Icon(Icons.arrow_right),
            ],
          ),
          Positioned(bottom: 8.0.h, child: const CounterSlider()),
        ],
      ),
    );
  }
}
