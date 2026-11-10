import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'states/_states.dart';
import 'ui/_ui.dart';
import 'ui_kit/_ui_kit.dart';

void main() {
  runApp(BlocProvider(
    create: (_) => StickerCubit(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StickerCubit, StickerState>(
      builder: (context, state) => MaterialApp(
        title: 'Sunny Stickers',
        theme: state.light ? AppTheme.lightTheme : AppTheme.darkTheme,
        home: const HomeScreen(),
      ),
    );
  }
}
