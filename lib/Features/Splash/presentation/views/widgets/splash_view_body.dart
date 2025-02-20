import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:go_router/go_router.dart';

import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController; // متحكم في الحركة
  late Animation<Offset> slidingAnimation; // متغير للحركة الانزلاقية

  @override
  void initState() {
    super.initState();
    initSlidingAnimation(); // تهيئة الحركة الانزلاقية
    navigateToHome(); // الانتقال إلى الشاشة الرئيسية بعد تأخير
  }

  @override
  void dispose() {
    super.dispose();
    animationController
        .dispose(); // إغلاق المتحكم في الحركة عند التخلص من الويدجت
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // محاذاة المحتوى في المنتصف
      crossAxisAlignment: CrossAxisAlignment.stretch, // توسيع المحتوى أفقيًا
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Image.asset(
            AssetsData.logo, // عرض صورة الشعار
          ),
        ),
        const SizedBox(height: 7), // مسافة بين الشعار والنص
        SlidingText(slidingAnimation: slidingAnimation) // عرض النص المنزلق
      ],
    );
  }

  // دالة لتهيئة الحركة الانزلاقية
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // مدة الحركة: ثانيتين
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController); // تهيئة الحركة من الأسفل إلى الأعلى
    animationController.forward(); // بدء الحركة
  }

  // دالة للانتقال إلى الشاشة الرئيسية
  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).push('homeView');

        // Get.off(
        //   () => const HomeView(), // الانتقال إلى الشاشة الرئيسية
        //   duration: kTransitionDuration, // مدة الانتقال
        //   transition: Transition.downToUp, // تأثير الانتقال من الأسفل إلى الأعلى
        // );
      },
    );
  }
}
