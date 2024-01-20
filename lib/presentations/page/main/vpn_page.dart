import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:openvpn/presentations/bloc/app_cubit.dart';
import 'package:openvpn/presentations/bloc/app_state.dart';
import 'package:openvpn/presentations/page/main/server_page/server_page.dart';
import 'package:openvpn/presentations/widget/impl/app_thapgiac_text.dart';
import 'package:openvpn/presentations/widget/index.dart';
import 'package:openvpn/resources/colors.dart';
import 'package:openvpn/resources/icondata.dart';
import 'package:openvpn/resources/strings.dart';

class VpnPage extends StatelessWidget {
  const VpnPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double halfScreenHeight = screenHeight / 2.5;

    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: halfScreenHeight,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.25),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'VPN connection',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 30,
                                  mainAxisSpacing: 1,
                                  childAspectRatio: 1,
                                  crossAxisSpacing: 1),
                          itemBuilder: (context, index) =>
                              Center(child: BuildList(state.duration[index])),
                          itemCount: state.duration.length,
                        ),
                      )),
                      state.titleStatus == 'Not connected'
                          ? const Text(
                              'Your IP exposed to danger!',
                              style: TextStyle(color: Color(0xffD62828)),
                            )
                          : state.isConnecting
                              ? const Text(
                                  'Your IP exposed to danger!',
                                  style: TextStyle(color: Color(0xffD62828)),
                                )
                              : const Text(
                                  'Your IP is hidden, you are now very secure!',
                                  style: TextStyle(color: Color(0xff119822)),
                                ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Dash(
                          dashThickness: 2,
                          dashLength: 10,
                          dashGap: 6,
                          length: 320,
                          direction: Axis.horizontal,
                          dashColor: Color(0xff2F2F2F)),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const SizedBox(width: 8),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 40),
                                    child: AppLabelText(
                                      icon: Appicon.upload,
                                      text: Strings.download,
                                      coloricon: const Color(0xff08A045),
                                      size: 10,
                                      color: AppColors.textSecondary,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  AppTitleText(
                                      text: state.byteOut,
                                      size: 28,
                                      color: Colors.white)
                                ],
                              ),
                            ),
                          ),
                          const Dash(
                              dashThickness: 2,
                              dashLength: 10,
                              length: 70,
                              dashGap: 6,
                              direction: Axis.vertical,
                              dashColor: Color(0xff2F2F2F)),
                          const SizedBox(width: 8),
                          Expanded(
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16)),
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 40),
                                      child: AppLabelText(
                                        icon: Appicon.download,
                                        coloricon: const Color(0xffF6AA1C),
                                        text: Strings.upload,
                                        size: 10,
                                        color: AppColors.textSecondary,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    AppTitleText(
                                      text: state.byteIn,
                                      size: 28,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                      const Spacer(),
                      const Spacer(),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return const ServerPage();
                        }));
                      },
                      style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 25, 25, 25),
                          side: const BorderSide(
                              width: 1, color: Colors.transparent),
                          shape: const BeveledRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      child: Row(
                        children: [
                          Image.asset(
                            state.currentServer?.flag ??
                                'assets/images/Frame.png',
                            height: 32,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            state.currentServer?.country ?? 'Fastest Server',
                            style: TextStyle(color: Colors.white),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                          )
                        ],
                      )),
                ),
              ],
            ),
            Positioned(
            
              child: Align(
                child: LoadingButtons(
                  icondata: Appicon.power,
                  isLoading: state.isConnecting,
                  icon: Icon(Appicon.power),
                  text: 'connecting',
                  onPressed: state.isConnecting
                      ? null
                      : () async {
                          await context.read<AppCubit>().toggle();
                        },
                  changeUI: state.titleStatus == 'Not connected',
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
  Widget BuildList(String d) {
    bool flag = false;
    if (d == ':') {
      flag = true;
    }
    return Row(
      children: [
        CustomPaint(painter: MyPainter()),
        const SizedBox(),
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: flag ? Colors.transparent : Colors.black,
          ),
          child: Text(
            d,
            style: const TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
