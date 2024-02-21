import 'package:counter_app/logic/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 5.w,
      height: 5.w,
      child: Center(
        child: SwitchListTile(
          value: context.select((ThemeCubit themeCubit) =>
              themeCubit.state.isDarkMode ? true : false),
          onChanged: (value) {
            context
                .read<ThemeCubit>()
                .setTheme(value ? ThemeMode.dark : ThemeMode.light);
          },
        ),
      ),
    );
  }
}
