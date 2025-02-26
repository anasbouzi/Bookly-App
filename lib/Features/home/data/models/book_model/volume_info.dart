// استيراد مكتبة Equatable لمقارنة الكائنات
import 'package:equatable/equatable.dart';

// استيراد الكلاسات الفرعية المطلوبة
import 'image_links.dart';
import 'industry_identifier.dart';
import 'panelization_summary.dart';
import 'reading_modes.dart';

// تعريف كلاس VolumeInfo الذي يمثل معلومات الكتاب
class VolumeInfo extends Equatable {
  // الحقول الأصلية مع تعديل نوع averageRating إلى int?
  final String? title; // عنوان الكتاب
  final String? subtitle; // العنوان الفرعي
  final List<String>? authors; // قائمة المؤلفين
  final String? publisher; // الناشر
  final String? publishedDate; // تاريخ النشر
  final String? description; // الوصف
  final List<IndustryIdentifier>? industryIdentifiers; // معرفات الصناعة
  final ReadingModes? readingModes; // أوضاع القراءة
  final int? pageCount; // عدد الصفحات
  final String? printType; // نوع الطباعة
  final List<String>? categories; // الفئات
  final String? maturityRating; // تصنيف النضج
  final bool? allowAnonLogging; // السماح بالتسجيل المجهول
  final String? contentVersion; // إصدار المحتوى
  final PanelizationSummary? panelizationSummary; // ملخص التصميم
  final ImageLinks imageLinks; // روابط الصور
  final String? language; // اللغة
  final String? previewLink; // رابط المعاينة
  final String? infoLink; // رابط المعلومات
  final String? canonicalVolumeLink; // الرابط الرسمي
  final int? averageRating; // متوسط التقييم كنوع عدد صحيح (جديد)
  final int? ratingsCount; // عدد التقييمات كنوع عدد صحيح (جديد)

  // المُنشئ مع الحقلين الجديدين كمعاملات اختيارية من نوع int?
  const VolumeInfo({
    this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    required this.imageLinks, // imageLinks مطلوب
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
    this.averageRating, // متوسط التقييم كعدد صحيح اختياري
    this.ratingsCount, // عدد التقييمات كعدد صحيح اختياري
  });

  // المصنع (factory) لتحويل JSON إلى كائن VolumeInfo
  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
        title: json['title'] as String?,
        subtitle: json['subtitle'] as String?,
        authors: (json['authors'] as List<dynamic>?)?.cast<String>(),
        publisher: json['publisher'] as String?,
        publishedDate: json['publishedDate'] as String?,
        description: json['description'] as String?,
        industryIdentifiers: (json['industryIdentifiers'] as List<dynamic>?)
            ?.map((e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>))
            .toList(),
        readingModes: json['readingModes'] == null
            ? null
            : ReadingModes.fromJson(json['readingModes'] as Map<String, dynamic>),
        pageCount: json['pageCount'] as int?,
        printType: json['printType'] as String?,
        categories: (json['categories'] as List<dynamic>?)?.cast<String>(),
        maturityRating: json['maturityRating'] as String?,
        allowAnonLogging: json['allowAnonLogging'] as bool?,
        contentVersion: json['contentVersion'] as String?,
        panelizationSummary: json['panelizationSummary'] == null
            ? null
            : PanelizationSummary.fromJson(json['panelizationSummary'] as Map<String, dynamic>),
        imageLinks: ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
        language: json['language'] as String?,
        previewLink: json['previewLink'] as String?,
        infoLink: json['infoLink'] as String?,
        canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
        averageRating: (json['averageRating'] as num?)?.toInt(), // تحويل إلى int أو null
        ratingsCount: json['ratingsCount'] as int?, // عدد التقييمات كعدد صحيح أو null
      );

  // تحويل الكائن إلى JSON
  Map<String, dynamic> toJson() => {
        'title': title,
        'subtitle': subtitle,
        'authors': authors,
        'publisher': publisher,
        'publishedDate': publishedDate,
        'description': description,
        'industryIdentifiers': industryIdentifiers?.map((e) => e.toJson()).toList(),
        'readingModes': readingModes?.toJson(),
        'pageCount': pageCount,
        'printType': printType,
        'categories': categories,
        'maturityRating': maturityRating,
        'allowAnonLogging': allowAnonLogging,
        'contentVersion': contentVersion,
        'panelizationSummary': panelizationSummary?.toJson(),
        'imageLinks': imageLinks?.toJson(),
        'language': language,
        'previewLink': previewLink,
        'infoLink': infoLink,
        'canonicalVolumeLink': canonicalVolumeLink,
        'averageRating': averageRating, // إضافة متوسط التقييم كنوع int إلى JSON
        'ratingsCount': ratingsCount, // إضافة عدد التقييمات كنوع int إلى JSON
      };

  // قائمة الخصائص لمقارنة الكائنات باستخدام Equatable
  @override
  List<Object?> get props => [
        title,
        subtitle,
        authors,
        publisher,
        publishedDate,
        description,
        industryIdentifiers,
        readingModes,
        pageCount,
        printType,
        categories,
        maturityRating,
        allowAnonLogging,
        contentVersion,
        panelizationSummary,
        imageLinks,
        language,
        previewLink,
        infoLink,
        canonicalVolumeLink,
        averageRating, // إضافة متوسط التقييم كنوع int إلى props
        ratingsCount, // إضافة عدد التقييمات كنوع int إلى props
      ];
}































// import 'package:equatable/equatable.dart';

// import 'image_links.dart';
// import 'industry_identifier.dart';
// import 'panelization_summary.dart';
// import 'reading_modes.dart';

// class VolumeInfo extends Equatable {
//   final String? title;
//   final String? subtitle;
//   final List<String>? authors;
//   final String? publisher;
//   final String? publishedDate;
//   final String? description;
//   final List<IndustryIdentifier>? industryIdentifiers;
//   final ReadingModes? readingModes;
//   final int? pageCount;
//   final String? printType;
//   final List<String>? categories;
//   final String? maturityRating;
//   final bool? allowAnonLogging;
//   final String? contentVersion;
//   final PanelizationSummary? panelizationSummary;
//   final ImageLinks imageLinks;
//   final String? language;
//   final String? previewLink;
//   final String? infoLink;
//   final String? canonicalVolumeLink;

//   const VolumeInfo({
//     this.title,
//     this.subtitle,
//     this.authors,
//     this.publisher,
//     this.publishedDate,
//     this.description,
//     this.industryIdentifiers,
//     this.readingModes,
//     this.pageCount,
//     this.printType,
//     this.categories,
//     this.maturityRating,
//     this.allowAnonLogging,
//     this.contentVersion,
//     this.panelizationSummary,
//     required this.imageLinks,
//     this.language,
//     this.previewLink,
//     this.infoLink,
//     this.canonicalVolumeLink,
//   });

//   factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
//         title: json['title'] as String?,
//         subtitle: json['subtitle'] as String?,
//         authors: (json['authors'] as List<dynamic>?)?.cast<String>(),
//         publisher: json['publisher'] as String?,
//         publishedDate: json['publishedDate'] as String?,
//         description: json['description'] as String?,
//         industryIdentifiers: (json['industryIdentifiers'] as List<dynamic>?)
//             ?.map((e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>))
//             .toList(),
//         readingModes: json['readingModes'] == null
//             ? null
//             : ReadingModes.fromJson(
//                 json['readingModes'] as Map<String, dynamic>),
//         pageCount: json['pageCount'] as int?,
//         printType: json['printType'] as String?,
//         categories: (json['categories'] as List<dynamic>?)?.cast<String>(),
//         maturityRating: json['maturityRating'] as String?,
//         allowAnonLogging: json['allowAnonLogging'] as bool?,
//         contentVersion: json['contentVersion'] as String?,
//         panelizationSummary: json['panelizationSummary'] == null
//             ? null
//             : PanelizationSummary.fromJson(
//                 json['panelizationSummary'] as Map<String, dynamic>),
//         imageLinks:
//             ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
//         language: json['language'] as String?,
//         previewLink: json['previewLink'] as String?,
//         infoLink: json['infoLink'] as String?,
//         canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
//       );

//   Map<String, dynamic> toJson() => {
//         'title': title,
//         'subtitle': subtitle,
//         'authors': authors,
//         'publisher': publisher,
//         'publishedDate': publishedDate,
//         'description': description,
//         'industryIdentifiers':
//             industryIdentifiers?.map((e) => e.toJson()).toList(),
//         'readingModes': readingModes?.toJson(),
//         'pageCount': pageCount,
//         'printType': printType,
//         'categories': categories,
//         'maturityRating': maturityRating,
//         'allowAnonLogging': allowAnonLogging,
//         'contentVersion': contentVersion,
//         'panelizationSummary': panelizationSummary?.toJson(),
//         'imageLinks': imageLinks?.toJson(),
//         'language': language,
//         'previewLink': previewLink,
//         'infoLink': infoLink,
//         'canonicalVolumeLink': canonicalVolumeLink,
//       };

//   @override
//   List<Object?> get props {
//     return [
//       title,
//       subtitle,
//       authors,
//       publisher,
//       publishedDate,
//       description,
//       industryIdentifiers,
//       readingModes,
//       pageCount,
//       printType,
//       categories,
//       maturityRating,
//       allowAnonLogging,
//       contentVersion,
//       panelizationSummary,
//       imageLinks,
//       language,
//       previewLink,
//       infoLink,
//       canonicalVolumeLink,
//     ];
//   }
// }
