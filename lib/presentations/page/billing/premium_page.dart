import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:openvpn/presentations/bloc/app_cubit.dart';
import 'package:openvpn/presentations/bloc/app_state.dart';
import 'package:openvpn/presentations/route/app_router.gr.dart';
import 'package:openvpn/presentations/widget/impl/Gradient.dart';
import 'package:openvpn/presentations/widget/impl/custompretimum.dart';
import 'package:openvpn/presentations/widget/index.dart';
import 'package:openvpn/resources/assets.gen.dart';
import 'package:openvpn/resources/colors.dart';
import 'package:openvpn/resources/strings.dart';
import 'package:openvpn/utils/config.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class PremiumPage extends StatefulWidget {
  const PremiumPage({super.key});

  @override
  State<PremiumPage> createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/pictureastronaut1.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            leading: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.clear,
                  color: Colors.white,
                )),
            centerTitle: true,
            title: const Cstmgradient(
              color: AppColors.listgradient,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              child: AppTitleText(
                text: Strings.benefitsOfThePremium,
              ),
            )),
        body: BlocBuilder<AppCubit, AppState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    Strings.Unlimited,
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 10) +
                            const EdgeInsets.only(bottom: 24),
                    padding: const EdgeInsets.only(top: 0),
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: const Column(
                            children: [],
                          ),
                        ),
                        //  ...state.subscriptions.take(3).map(_buildItem),
                        _buildSubscriptionItem(state.subscriptions, state),
                        const SizedBox(height: 20),
                        AppButtons(
                          height: 50,
                          margin: const EdgeInsets.only(bottom: 5),
                          text: Strings.getPremiumNow,
                          textColor: Colors.white,
                          backgroundColor: Colors.transparent,
                          onPressed: () async {
                            await context.read<AppCubit>().subscribe();
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Cancel anytime!',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Benefits of the V.I.P package:',
                              style: TextStyle(color: Colors.white),
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        const CustomPretimum(
                          text: 'Remove Ads',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const CustomPretimum(
                          text: 'Unlock all V.I.P . servers',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const CustomPretimum(
                          text: '24/7 customer support',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const CustomPretimum(
                          text: 'High quality speed, can use many devices',
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          'Subscriptions will be changed to your payment method through your iTunes Billing account. Your subscription will automatically renew unless canceled at least 24 hours before the end of the current period. Manage your subscriptions in Account Settings after Purchase.',
                          style: TextStyle(color: Color.fromARGB(200, 255, 255, 255)),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                       
                      ],
                    ),
                  )
                  // ShadowContainer(
                  //   margin: const EdgeInsets.symmetric(horizontal: 24) +
                  //       const EdgeInsets.only(top: 80),
                  //   height: 180,
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       InkWell(
                  //         child: const AppLabelText(
                  //           text: Strings.benefitsOfThePremium,
                  //           color: AppColors.colorYellow,
                  //         ),
                  //         onTap: () {
                  //           AutoRouter.of(context).push(const ShopRoute());
                  //         },
                  //       ),
                  //       const SizedBox(height: 16),
                  //       Expanded(
                  //         child: Row(
                  //           children: [
                  //             Container(
                  //               width: 4,
                  //               decoration: const BoxDecoration(
                  //                 color: AppColors.accent,
                  //                 borderRadius:
                  //                     BorderRadius.all(Radius.circular(10)),
                  //               ),
                  //             ),
                  //             const SizedBox(width: 8),
                  //             const Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               mainAxisAlignment: MainAxisAlignment.end,
                  //               children: [
                  //                 AppBodyText(text: Strings.removeAds),
                  //                 AppBodyText(text: Strings.unlockAllPremium),
                  //                 AppBodyText(
                  //                   text: Strings.superFastServer,
                  //                 ),
                  //                 AppBodyText(text: Strings.customerSupport),
                  //               ],
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // const Spacer(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildItem(ProductDetails e) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Column(
          children: [
            AppRadioButtons(
              title: e.title.split('(').firstOrNull ?? '',
              summary: e.price,
              isChecked: state.selectedSubscription?.id == e.id,
              onPressed: () {
                context.read<AppCubit>().setSubscription(e);
              },
            ),
            const SizedBox(height: 16),
          ],
        );
      },
    );
  }

  Widget _buildSubscriptionItem(
      List<ProductDetails> subscriptions, AppState state) {
    if (subscriptions.isEmpty) {
      // If subscriptions list is empty, provide default values for display
      subscriptions = [
        ProductDetails(
          id: 'default_id_1',
          title: 'Remove ads 1 year',
          description: 'Default Description 1',
          price: '100.000đ',
          rawPrice: 100.00,
          currencyCode: 'VND',
        ),
      ];
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: subscriptions.take(3).map((e) {
        return GestureDetector(
          onTap: () {
            context.read<AppCubit>().setSubscription(e);
          },
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(143, 0, 0, 0),
              borderRadius: BorderRadius.circular(14),
              border:  GradientBoxBorder(gradient:  LinearGradient(colors: state.selectedSubscription?.id == e.id ?  AppColors.listgradient : [Colors.transparent, Colors.transparent], begin: Alignment.topCenter, end: Alignment.bottomCenter), )
            ),
        
           
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Assets.images.group863.image(),
                state.selectedSubscription?.id == e.id
                    ? Cstmgradient(
                        color: AppColors.listgradient,
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        child: Text('${e.title.split('(').firstOrNull ?? ''}'),
                      )
                    : AppLabelText(
                        text: e.title.split('(').firstOrNull ?? '',
                        size: 15,
                        color: AppColors.primary,
                      ),
                const SizedBox(height: 10),
                 state.selectedSubscription?.id == e.id
                    ? Cstmgradient(
                        color: AppColors.listgradient,
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        child: Text('${e.price}'),
                      )
                    : AppTitleText(
                  size: 25,
                  text: e.price,
                  color: 
                      AppColors.primary,
                ),
                const SizedBox(height: 5),
                //   Assets.icons.icCrown.svg()
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
