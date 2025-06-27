import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_color_generator/features/color_screen/color_provider.dart';

const int maxValueOfRGB = 255;

void main() {
  group('ColorNotifier', () {
    test('Initial state is Color.white', () {
      final container = ProviderContainer();
      expect(container.read(colorNotifierProvider), Colors.white);
    });

    test('generateRandomColor updates state to valid color', () {
      final container = ProviderContainer();
      container.read(colorNotifierProvider.notifier).generateRandomColor();

      final color = container.read(colorNotifierProvider);

      final red = colorConveterToInt(color.r);
      final green = colorConveterToInt(color.g);
      final blue = colorConveterToInt(color.b);

      expect(red, inInclusiveRange(0, maxValueOfRGB));
      expect(green, inInclusiveRange(0, maxValueOfRGB));
      expect(blue, inInclusiveRange(0, maxValueOfRGB));
    });

    test('generateRandomColor changes color from initial to another', () {
      final container = ProviderContainer();
      container.read(colorNotifierProvider.notifier).generateRandomColor();

      final color = container.read(colorNotifierProvider);

      expect(color != Colors.white, true);
    });
  });
}

int colorConveterToInt(double channel) {
  return (channel * maxValueOfRGB).toInt();
}
