import 'package:appointment/core/routing/app_router.dart';
import 'package:appointment/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/theaming/colors.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
         child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Doc App',
          theme: ThemeData(
            primaryColor: AppColors.primary,
            scaffoldBackgroundColor: Colors.white,
            fontFamily: 'Poppins',
          ),
          onGenerateRoute: appRouter.onGenerateRoute,
          initialRoute: Routes.onBoardingScreen,
           ),

    );
  }
}
