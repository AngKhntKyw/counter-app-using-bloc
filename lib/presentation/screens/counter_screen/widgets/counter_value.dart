import 'package:animate_do/animate_do.dart';
import 'package:counter_app/logic/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class CounterValue extends StatefulWidget {
  const CounterValue({
    super.key,
  });

  @override
  State<CounterValue> createState() => _CounterValueState();
}

class _CounterValueState extends State<CounterValue> {
  AnimationController? animationController;

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    animationController?.forward(from: 0.0);
    return ZoomIn(
      duration: const Duration(milliseconds: 400),
      manualTrigger: true,
      controller: (controller) => animationController = controller,
      child: Text(
        context.select((CounterCubit counterCubit) =>
            "${counterCubit.state.counterValue}"),
        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 80.0.sp,
            ),
      ),
    );
  }
}
