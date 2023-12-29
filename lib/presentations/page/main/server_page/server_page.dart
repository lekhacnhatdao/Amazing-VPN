
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:openvpn/presentations/bloc/app_cubit.dart';
import 'package:openvpn/presentations/bloc/app_state.dart';

import 'package:openvpn/presentations/page/main/server_page/allserver.dart';
import 'package:openvpn/presentations/page/main/server_page/pretimun.dart';

import 'package:openvpn/resources/colors.dart';

class ServerPage extends StatefulWidget {
  const ServerPage({super.key});

  @override
  State<ServerPage> createState() => _ServerPageState();
}

class _ServerPageState extends State<ServerPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: BlocBuilder<AppCubit, AppState>(builder: (context, state) {
        return Container(
          color: Colors.white,
          child: SafeArea(
            
            child: DecoratedBox(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(197, 0, 0, 0),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Layer 1.png'))),
                child: Scaffold(
                    backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                    appBar: AppBar(
                      leading: const BackButton(
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Virtual server',
                        style: TextStyle(color: Colors.white),
                      ),
                      centerTitle: true,
                      bottom: const TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          labelStyle: TextStyle(color: Colors.white),
                          unselectedLabelColor: Colors.white,
                          dividerColor: Colors.transparent,
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              gradient: LinearGradient(
                                  colors: AppColors.listgradient,
                                  begin: Alignment.centerLeft)),
                          tabs: [
                            Tab(
                              text: 'All server',
                            ),
                            Tab(
                              text: 'Premium server',
                            )
                          ]),
                    ),
                    body: const TabBarView(children: [
                      AllServer(),
                      PretimunServer()
                      // Row(
                      //     children: [
                      //       CachedNetworkImage(
                      //         imageUrl: flag ? 'https://cdn.tgdd.vn/Files/2016/12/09/923744/khongxacdinh_213x379.jpg' : server.flag,
                      //         width: 35,
                      //       ),
                      //       const SizedBox(width: 16),
                      //       Column(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           Row(
                      //             children: [
                      //               AppLabelText(
                      //                 text: server.country ?? '',
                      //               ),
                      //               const SizedBox(width: 8),
                      //               if (server.vip)
                      //                 const Icon(Icons.star, color: AppColors.colorYellow)
                      //             ],
                      //           ),
                      //           AppBodyText(
                      //             text: server.region ?? '',
                      //             size: 12,
                      //           )
                      //         ],
                      //       ),
                      //       const Spacer(),
                    ]))),
          ),
        );
      }),
    );
  }
}
