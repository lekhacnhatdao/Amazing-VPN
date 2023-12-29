import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:openvpn/presentations/route/app_router.dart';
import 'package:openvpn/resources/colors.dart';
import 'package:openvpn/resources/fonts.gen.dart';
import 'package:openvpn/utils/config.dart';

class RootPage extends StatelessWidget {
  RootPage({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: Config.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.transparent,
          ),
          iconTheme: IconThemeData(color: AppColors.textPrimary),
          color: Colors.transparent,
        ),
        primaryColor: AppColors.primary,
        primaryColorDark: AppColors.primaryDark,
          
        useMaterial3: true,
        fontFamily: FontFamily.campton,
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 18,
            color: AppColors.textPrimary,
            fontFamily: FontFamily.camptonBold,
          ),
          labelMedium: TextStyle(
            fontSize: 14,
            color: AppColors.textPrimary,
            fontFamily: FontFamily.camptonMedium,
          ),
          bodyMedium: TextStyle(fontSize: 14, color: AppColors.textPrimary),
        ),
      ),
      builder: EasyLoading.init(),
      routerConfig: _appRouter.config(),
    );
  }
}
