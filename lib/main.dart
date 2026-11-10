import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'states/_states.dart';
import 'ui/_ui.dart';
import 'ui_kit/_ui_kit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(StickerState(), permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetBuilder<StickerState>(
      builder: (state) => MaterialApp(
        title: 'Sunny Stickers',
        theme: state.light ? AppTheme.lightTheme : AppTheme.darkTheme,
        home: const HomeScreen(),
      ),
    );
  }
}
