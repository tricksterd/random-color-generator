import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:random_color_generator/features/color_screen/color_provider.dart';

class ColorScreen extends ConsumerWidget {
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          ref.read(colorNotifierProvider.notifier).generateRandomColor();
        },
        child: ColoredBox(
          color: ref.watch(colorNotifierProvider),
          child: const Center(
            child: Text(
              'Hello there',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
