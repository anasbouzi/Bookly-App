import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'featured_list_view.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // محاذاة العناصر إلى بداية العمود
          children: [
            CustomAppBar(), // استدعاء شريط التطبيق المخصص
            FeaturedBookListView(), // استدعاء قائمة الكتب المميزة
            SizedBox(height: 40), // إضافة تباعد عمودي
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10), // إضافة تباعد أفقي
              child: Text(
                'Best Seller', // نص لعرض عنوان الكتب الأكثر مبيعًا
                style: Styles.textStyle18, // تطبيق نمط النص
              ),
            ),
            SizedBox(height: 23), // إضافة تباعد عمودي
          ],
        )),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const BestSellerListView(); // استدعاء قائمة الكتب الأكثر مبيعًا
            },
            childCount: 1, // عدد العناصر في القائمة
          ),
        ),
      ],
    );
  }
}
