import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/book_detailes_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailesView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      // مسار صفحة البحث (SearchView)
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
