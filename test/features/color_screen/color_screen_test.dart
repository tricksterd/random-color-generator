import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:random_color_generator/features/color_screen/color_screen.dart';

void main() {
  testWidgets('Find text widget', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(child: MaterialApp(home: ColorScreen())),
    );

    final text = find.text('Hello there');
    expect(text, findsOneWidget);
  });
}
