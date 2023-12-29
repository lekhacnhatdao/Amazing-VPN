import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openvpn/data/local/app_db.dart';

import 'package:openvpn/presentations/bloc/app_cubit.dart';
import 'package:openvpn/presentations/bloc/app_state.dart';
import 'package:openvpn/presentations/route/app_router.gr.dart';
import 'package:openvpn/presentations/widget/impl/backround.dart';
import 'package:openvpn/resources/assets.gen.dart';
import 'package:openvpn/resources/colors.dart';
import 'package:openvpn/utils/config.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool agreePrivacy = AppDatabase().getAgreePrivacyStatus();
    context.read<AppCubit>().fetchServerList();
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.05),
      body: Custombackground(
        widget: BlocListener<AppCubit, AppState>(
          listener: (context, state)  async{
             await Future.delayed(const Duration(milliseconds: 3000));

          if (!context.mounted) return;

          final route =
              agreePrivacy ? const MainRoute() : const PrivacyRoute();
          AutoRouter.of(context).replace(route);
          //  if (state.servers.isNotEmpty) {
          //   if (agreePrivacy == true) {
          //  //   await Future.delayed(const Duration(milliseconds: 1400));
          //     if (!context.mounted) return;
          //     AutoRouter.of(context).replace(const MainRoute ());
          //   }
          //    else {
          // //    await Future.delayed(const Duration(milliseconds: 1400));
          //     if (!context.mounted) return;
          //     AutoRouter.of(context).replace(const PrivacyRoute ());
          //   }
          
          },
          child:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.images.frame.image(),
                const Text('${Config.appName}', style: TextStyle(color: AppColors.primary, fontSize: 22),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
