import 'package:flutter/widgets.dart';
import 'package:flutter_public_repository/home/domain/entities/post_model.dart';
import 'package:flutter_public_repository/home/presentation/screen/posts_screen.dart';
import 'package:flutter_public_repository/post_detail/presentation/screen/post_detail_screen.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: "/home",
  routes: [
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/home',
      name: 'home',
      pageBuilder: (context, state) {
        return const NoTransitionPage(child: PostsScreen());
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/detail',
      name: 'detail',
      pageBuilder: (context, state) {
        final post = state.extra as PostModel;
        return NoTransitionPage(child: PostDetailScreen(post));
      },
    ),
  ],
);
