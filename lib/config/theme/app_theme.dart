/*
	Copyright 2023 Take Control - Software & Infrastructure

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sync_client/config/theme/theme_cubit.dart';

const seedColor = Color.fromARGB(255, 7, 80, 59);

class AppTheme {
  static ThemeData getTheme(BuildContext context) {
    final theme = context.watch<ThemeCubit>();
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: seedColor,
        brightness: theme.state.isDarkMode ? Brightness.dark : Brightness.light,
        listTileTheme: const ListTileThemeData(
          iconColor: seedColor,
        ));
  }
}

headerFooterBoxDecoration(BuildContext context, bool isHeader) {
  final theme = Theme.of(context);
  return BoxDecoration(
    color: theme.colorScheme.surface,
    border: Border(
        top: isHeader
            ? BorderSide.none
            : BorderSide(width: 2, color: theme.primaryColor),
        bottom: isHeader
            ? BorderSide(width: 2, color: theme.primaryColor)
            : BorderSide.none),
  );
}

errorBoxDecoration(BuildContext context) {
  final theme = Theme.of(context);
  return BoxDecoration(
      border: Border.all(color: Colors.black),
      color: theme.colorScheme.surface,
      borderRadius: const BorderRadius.all(Radius.circular(8)));
}

infoBoxDecoration(BuildContext context) {
  final theme = Theme.of(context);
  return BoxDecoration(
      border: Border.all(color: Colors.black),
      color: theme.colorScheme.surface,
      borderRadius: const BorderRadius.all(Radius.circular(8)));
}

errorTextStyle(BuildContext context, {bool bold = false}) {
  final theme = Theme.of(context);
  return TextStyle(
      color: theme.colorScheme.error,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal);
}

infoTextStyle(BuildContext context, {bool bold = false}) {
  return TextStyle(
      color: Colors.black,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal);
}

boldTextStyle() {
  return const TextStyle(color: Colors.black, fontWeight: FontWeight.bold);
}

importantTextStyle(BuildContext context) {
  return TextStyle(
      color: forestGreenColor, fontWeight: FontWeight.bold, fontSize: 12);
}

MaterialColor forestGreenColor = MaterialColor(
  const Color.fromRGBO(0, 104, 74, 1).value,
  const <int, Color>{
    50: Color.fromRGBO(0, 104, 74, 0.1),
    100: Color.fromRGBO(0, 104, 74, 0.2),
    200: Color.fromRGBO(0, 104, 74, 0.3),
    300: Color.fromRGBO(0, 104, 74, 0.4),
    400: Color.fromRGBO(0, 104, 74, 0.5),
    500: Color.fromRGBO(0, 104, 74, 0.6),
    600: Color.fromRGBO(0, 104, 74, 0.7),
    700: Color.fromRGBO(0, 104, 74, 0.8),
    800: Color.fromRGBO(0, 104, 74, 0.9),
    900: Color.fromRGBO(0, 104, 74, 1),
  },
);

MaterialColor mistColor = MaterialColor(
  const Color.fromRGBO(227, 252, 247, 1).value,
  const <int, Color>{
    50: Color.fromRGBO(227, 252, 247, 0.1),
    100: Color.fromRGBO(227, 252, 247, 0.2),
    200: Color.fromRGBO(227, 252, 247, 0.3),
    300: Color.fromRGBO(227, 252, 247, 0.4),
    400: Color.fromRGBO(227, 252, 247, 0.5),
    500: Color.fromRGBO(227, 252, 247, 0.6),
    600: Color.fromRGBO(227, 252, 247, 0.7),
    700: Color.fromRGBO(227, 252, 247, 0.8),
    800: Color.fromRGBO(227, 252, 247, 0.9),
    900: Color.fromRGBO(227, 252, 247, 1),
  },
);

Color get darkRedColor => const Color.fromARGB(255, 208, 18, 5);
Color get lightRedColor => const Color.fromARGB(255, 244, 223, 221);
