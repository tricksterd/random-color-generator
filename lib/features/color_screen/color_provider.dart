import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:random_color_generator/features/color_screen/color_notifier.dart';

final colorNotifierProvider = NotifierProvider<ColorNotifier, Color>(
  ColorNotifier.new,
);
