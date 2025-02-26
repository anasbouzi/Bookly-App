import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4, // يحافظ على نسبة العرض إلى الارتفاع للصورة
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          errorWidget: (context, url, error) =>
              const Icon(Icons.error_outline_outlined),
        ),
      ),
    );
  }
}
// Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15), // تدوير زوايا الصورة
//           // color: Colors.red, // لون خلفية الحاوية (تم التعليق على السطر)
//           image: DecorationImage(
//             fit: BoxFit.fill,
//             image: NetworkImage(
//               imageUrl, // مسار صورة الأصول
//             ),
//           ),
//         ),
//       )