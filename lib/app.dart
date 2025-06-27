import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:random_color_generator/features/color_screen/color_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Color Generator',
      debugShowCheckedModeBanner: false,
      home: ProviderScope(child: ColorScreen()),
    );
  }
}
