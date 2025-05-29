import 'package:go_router/go_router.dart';
import 'package:portfolio/view/home_view.dart';

class AppRouters {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [GoRoute(path: "/", builder: (context, state) => HomeView())],
  );
}
