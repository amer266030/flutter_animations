import 'package:flutter/material.dart';

extension TextStyleExtension on BuildContext {
  TextStyle get bodySmallStyle {
    return Theme.of(this).textTheme.bodySmall!;
  }

  TextStyle get bodyMediumStyle {
    return Theme.of(this).textTheme.bodyMedium!;
  }

  TextStyle get bodyLargeStyle {
    return Theme.of(this).textTheme.bodyLarge!;
  }

  TextStyle get titleSmall {
    return Theme.of(this).textTheme.titleSmall!;
  }

  TextStyle get titleMedium {
    return Theme.of(this).textTheme.titleMedium!;
  }

  TextStyle get titleLarge {
    return Theme.of(this).textTheme.titleLarge!;
  }
}
