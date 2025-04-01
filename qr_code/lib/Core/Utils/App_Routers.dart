import 'package:go_router/go_router.dart';
import 'package:qr_code/Features/Onboarding/Presentation/Views/Onboarding1_View.dart';
import 'package:qr_code/Features/Splash/Presentation/Views/Splash_View.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: '/Onboarding1', builder: (context, state) => Onboarding1View ()),
    ],
);
