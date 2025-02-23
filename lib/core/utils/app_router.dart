import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly/Features/home/presentation/views/book_detailes_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  // تعريف مسارات التطبيق كـ ثوابت
  static const kHomeView = '/homeView';
  static const kBookDetailesView = '/bookDetailes';
  static const kSearchView = '/searchView';

  // تعريف الـ router باستخدام GoRouter
  static final router = GoRouter(
    routes: [
      // مسار الصفحة الرئيسية (SplashView)
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      // مسار الصفحة الرئيسية (HomeView)
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      // مسار صفحة تفاصيل الكتاب (BookDetailesView)
      GoRoute(
        path: kBookDetailesView,
        builder: (context, state) => const BookDetailesView(),
      ),
      // مسار صفحة البحث (SearchView)
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
