import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation, // متغير للتحكم في الحركة الانزلاقية
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation, // تطبيق الحركة الانزلاقية
            child: const Text(
              'Read Free Books', // النص المعروض
              textAlign: TextAlign.center, // محاذاة النص في المنتصف
            ),
          );
        });
  }
}
