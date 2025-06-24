import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_public_repository/core/resources/theme_colors.dart';
import 'package:flutter_public_repository/injectable.dart';
import 'package:flutter_public_repository/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home/presentation/bloc/post_list/post_list_bloc.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        print('Do something when the lifecycle change.');
        break;
      case AppLifecycleState.paused:
        print('Do something when the lifecycle change.');
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 720),
        splitScreenMode: false,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<PostListBloc>(
                create: (_) => getIt<PostListBloc>(),
              )
            ],
            child: MaterialApp.router(
              theme: ThemeData(
                primaryColor: ThemeColors.primaryColor,
                errorColor: ThemeColors.errorColor,
              ),
              routeInformationParser: router.routeInformationParser,
              routerDelegate: router.routerDelegate,
              routeInformationProvider: router.routeInformationProvider,
            ),
          );
        });
  }
}
