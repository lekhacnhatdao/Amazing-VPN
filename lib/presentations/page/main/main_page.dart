import 'dart:async';

import 'package:auto_route/annotations.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openvpn/presentations/bloc/app_cubit.dart';

import 'package:openvpn/presentations/page/billing/premium_page.dart';
import 'package:openvpn/presentations/page/main/history_page.dart';

import 'package:openvpn/presentations/page/main/settingpage.dart';
import 'package:openvpn/presentations/page/main/vpn_page.dart';
import 'package:openvpn/presentations/widget/impl/backround.dart';
import 'package:openvpn/presentations/widget/impl/custombar.dart';
import 'package:openvpn/presentations/widget/index.dart';

import 'package:openvpn/resources/colors.dart';
import 'package:openvpn/resources/icondata.dart';

import 'package:openvpn/utils/config.dart';
import 'package:upgrader/upgrader.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  late Timer _timer;
  bool _dialogShown = false;
    @override
  void dispose() {
    context.read<AppCubit>().stopBilling();
    _timer.cancel();
    super.dispose();
  }
  Future<void> _maintenancePopup() async {
    await Future.delayed(const Duration(seconds: 7));
    if (context.read<AppCubit>().state.servers.isEmpty && !_dialogShown) {
      _showMaintenanceDialog();
    }
    _timer = Timer.periodic(const Duration(seconds: 60), (Timer timer) {
      context.read<AppCubit>().fetchServerList();
      if (context.read<AppCubit>().state.servers.isEmpty && !_dialogShown) {
        _showMaintenanceDialog();
      }
    });
  }
  @override
  void initState() {
   
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {_maintenancePopup();
      context.read<AppCubit>().startBilling();
        
    });
   

    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return UpgradeAlert(
      child: Container(
        child: SafeArea(
          bottom: false,
          child: Scaffold(
              backgroundColor: Colors.black.withOpacity(0.05),
              appBar: AppBar(
                backgroundColor: Colors.black,
                leading: const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(
                      image: AssetImage('assets/images/Frame.png'),
                      height: 30,
                    ),
                  ],
                ),
                title: const AppTitleText(
                  text: Config.appName,
                  color: Colors.white,
                ),
                actions: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          backgroundColor: AppColors.purple,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return PremiumPage();
                            }));
                          },
                          child: Row(
                            children: [
                              Image.asset('assets/images/crown.png'),
                              const Text(
                                'Go VIP',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )),
                  )
                  // BlocBuilder<AppCubit, AppState>(
                  //   builder: (context, state) {
                  //     return Container(
                  //       decoration: const BoxDecoration(
                  //         boxShadow: <BoxShadow>[
                  //           BoxShadow(
                  //             color: Colors.white12,
                  //             blurRadius: 10,
                  //           ),
                  //         ],
                  //         borderRadius: BorderRadius.all(Radius.circular(100)),
                  //       ),
                  //       padding: const EdgeInsets.symmetric(horizontal: 16),
                  //       child: CachedNetworkImage(
                  //         imageUrl: state.currentServer?.flag ?? 'assets/images/Frame.png',
                  //         height: 32,
                  //       ),
                  //     );
                  //   },
                  // )
                ],
              ),
              body: Custombackground(
                widget: Column(
                  children: [
                    Expanded(
                      child: TabBarView(controller: controller, children: const [
                        VpnPage(),
                        HistoryPage(),
                        SettingPage(),
                      ]),
                    ),
                    CustomBottomBar(
                      controller: controller,
                      listIcon: [
                        Appicon.flashcircle,
                        Icons.history_outlined,
                        Icons.settings,
                      ],
                      onSelect: (index) => controller.animateTo(index),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }

  void _showMaintenanceDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        _dialogShown = true;
        return AlertDialog(
          title: const Text('Oops! Sorry (-_-)'),
          content: const Text(
              textAlign: TextAlign.center,
              'We are maintaining the system to upgrade the server. Please try again later'),
          actions: <Widget>[
            AppButtons(
                textColor: AppColors.primary,
                text: "Close",
                backgroundColor: AppColors.colorRed,
                onPressed: () {
                  Navigator.pop(context);
                  _dialogShown = false;
                }),
          ],
        );
      },
    );
  }
}
