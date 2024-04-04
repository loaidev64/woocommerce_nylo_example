import '/resources/pages/profile_page.dart';
import '/resources/pages/store_page.dart';
import '/resources/pages/categories_page.dart';
import '/resources/pages/main_page.dart';
import '/resources/pages/login_page.dart';
import '/resources/pages/home_page.dart';
import '/resources/pages/splash_page.dart';
import 'package:nylo_framework/nylo_framework.dart';

/* App Router
|--------------------------------------------------------------------------
| * [Tip] Create pages faster 🚀
| Run the below in the terminal to create new a page.
| "dart run nylo_framework:main make:page profile_page"
| Learn more https://nylo.dev/docs/5.20.0/router
|-------------------------------------------------------------------------- */

appRouter() => nyRoutes((router) {
      // router.route(HomePage.path, (context) => HomePage(), initialRoute: true);
      // Add your routes here

      // router.route(NewPage.path, (context) => NewPage(), transition: PageTransitionType.fade);

      // Example using grouped routes
      // router.group(() => {
      //   "route_guards": [AuthRouteGuard()],
      //   "prefix": "/dashboard"
      // }, (router) {
      //
      //   router.route(AccountPage.path, (context) => AccountPage());
      // });
      router.route(SplashPage.path, (context) => SplashPage(),
          initialRoute: true);
      router.route(HomePage.path, (context) => HomePage());
      router.route(LoginPage.path, (context) => LoginPage(), authPage: true);
      router.route(MainPage.path, (context) => MainPage());
  router.route(CategoriesPage.path, (context) => CategoriesPage());
  router.route(StorePage.path, (context) => StorePage());
  router.route(ProfilePage.path, (context) => ProfilePage());
});
