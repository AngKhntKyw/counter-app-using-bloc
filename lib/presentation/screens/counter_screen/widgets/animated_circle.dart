import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AnimatedCircle extends StatelessWidget {
  const AnimatedCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 80.0.w,
          width: 60.0.h,
          child: FlareActor(
            'assets/flares/loading-animation-sun-flare.flr',
            animation: 'active',
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        SizedBox(
          height: 70.0.w,
          width: 40.0.h,
          child: FlareActor(
            'assets/flares/Loading.flr',
            animation: 'Alarm',
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
      ],
    );
  }
}
