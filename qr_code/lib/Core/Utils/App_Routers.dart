import 'package:go_router/go_router.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Generate_view.dart';
import 'package:qr_code/Features/History/Presentation/Views/History_View.dart';
import 'package:qr_code/Features/Home/Presentation/Views/Home_view.dart';
import 'package:qr_code/Features/Onboarding/Presentation/Views/MainView.dart';
import 'package:qr_code/Features/Onboarding/Presentation/Views/Onboarding1_View.dart';
import 'package:qr_code/Features/Onboarding/Presentation/Views/Onboarding2_View.dart';
import 'package:qr_code/Features/Onboarding/Presentation/Views/Onboarding3_View.dart';
import 'package:qr_code/Features/Splash/Presentation/Views/Splash_View.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: '/Onboarding1', builder: (context, state) => Onboarding1View ()),
    GoRoute(path: '/Onboarding2', builder: (context, state) => Onboarding2View ()),
    GoRoute(path: '/Onboarding3', builder: (context, state) => Onboarding3View ()),
    GoRoute(path: '/Main', builder: (context, state) => Mainview ()),
    GoRoute(path: '/Home', builder: (context, state) => HomeView ()),
    GoRoute(path: '/Generate', builder: (context, state) => const GenerateView ()),
    GoRoute(path: '/History', builder: (context, state) => const HistoryView ()),
    ],
);
