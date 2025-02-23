import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor, // لون خلفية الزر
    required this.textColor, // لون النص (غير مستخدم حاليًا)
    this.borderRadius, // نصف قطر حافة الزر (اختياري)
    required this.text, // النص المعروض داخل الزر
    this.fontSize, // حجم الخط (اختياري)
  });

  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48, // ارتفاع ثابت للزر
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor, // تعيين لون الخلفية
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
                BorderRadius.circular(12), // تعيين نصف قطر الحواف
          ),
        ),
        onPressed: () {}, //وظيفة الزر
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900, // سمك الخط
            fontSize: fontSize, // حجم الخط (اختياري)
          ),
        ),
      ),
    );
  }
}
