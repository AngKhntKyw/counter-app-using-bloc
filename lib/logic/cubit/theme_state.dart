// ignore_for_file: public_member_api_docs, sort_constructors_first
// part of 'theme_cubit.dart';

// class ThemeState {
//   final ThemeMode themeMode;
//   const ThemeState({required this.themeMode});

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'themeMode': themeMode.toString(),
//     };
//   }

//   factory ThemeState.fromMap(Map<String, dynamic> map) {
//     return ThemeState(
//       themeMode: map['themeMode'] as ThemeMode,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory ThemeState.fromJson(String source) =>
//       ThemeState.fromMap(json.decode(source) as Map<String, dynamic>);
// }

part of 'theme_cubit.dart';

class ThemeState {
  final bool isDarkMode;
  const ThemeState({
    required this.isDarkMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDarkMode': isDarkMode,
    };
  }

  factory ThemeState.fromMap(Map<String, dynamic> map) {
    return ThemeState(
      isDarkMode: map['isDarkMode'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory ThemeState.fromJson(String source) =>
      ThemeState.fromMap(json.decode(source) as Map<String, dynamic>);
}
