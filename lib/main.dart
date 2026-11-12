import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'states/_states.dart';
import 'ui/_ui.dart';
import 'ui_kit/_ui_kit.dart';

void main() {
  final store = Store<StickerState>(
    stickerReducer,
    initialState: StickerState.initial(),
  );
  runApp(StoreProvider<StickerState>(
    store: store,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sunny Stickers',
      theme: AppTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}
