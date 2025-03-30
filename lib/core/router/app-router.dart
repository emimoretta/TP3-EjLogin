import 'package:flutter_application_1/screens/screen1.dart';
import 'package:flutter_application_1/screens/screen2.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/screen1',
  routes: [
    GoRoute(path: '/screen1', builder: (context, state) => Screen1()),
    GoRoute(path: '/screen2', builder: (context, state) => Screen2(email: '')),
  ],
);
