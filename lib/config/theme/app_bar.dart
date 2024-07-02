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

class MainAppBar {
  static AppBar appBar(BuildContext context) {
    final ThemeCubit theme = context.watch<ThemeCubit>();
    return AppBar(
      title: const Text("Mobi Sync"),
      actions: [
        IconButton(
          icon: theme.state.isDarkMode
              ? const Icon(Icons.dark_mode_outlined)
              : const Icon(Icons.light_mode_outlined),
          tooltip: 'Change theme',
          onPressed: () {
            theme.toggleTheme();
          },
        ),
      ],
    );
  }
}
