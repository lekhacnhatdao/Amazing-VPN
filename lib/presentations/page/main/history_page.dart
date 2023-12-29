import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:openvpn/data/local/app_db.dart';

import 'package:openvpn/di/components/app_component.dart';
import 'package:openvpn/domain/model/history/history_model.dart';

import 'package:openvpn/presentations/bloc/app_cubit.dart';
import 'package:openvpn/presentations/bloc/app_state.dart';

import 'package:openvpn/presentations/widget/impl/Gradient.dart';
import 'package:openvpn/presentations/widget/impl/app_body_text.dart';
import 'package:openvpn/presentations/widget/impl/app_icon_buttons.dart';

import 'package:openvpn/presentations/widget/impl/app_title_text.dart';

import 'package:openvpn/resources/assets.gen.dart';
import 'package:openvpn/resources/colors.dart';
import 'package:openvpn/utils/extension/date_extension.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AppCubit>().fetchHistoryList();
    });
  }

  void _refreshListView() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    bool isHistoryNotEmpty = false;
    return  Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: const AppTitleText(
            text: 'History',
            color: Colors.white,
          ),
          actions: [
            AppIconButtons(
              icon: isHistoryNotEmpty == true
                  ? Assets.icons.icCrown.svg()
                  : const Cstmgradient(child:Icon(Icons.delete) ,color: AppColors.listgradient, begin: Alignment.topCenter, end: Alignment.bottomCenter,  ) ,
              onPressed: () {
                if (isHistoryNotEmpty == true) {
                  _deleteAllConfirmationDialog();
                } else {
                  EasyLoading.showToast('History connection list is empty');
                }
              },
            )
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: BlocBuilder<AppCubit, AppState>(
            builder: (context, state) {
              if (state.histories.isNotEmpty) {
                isHistoryNotEmpty = true;
              } else {
                isHistoryNotEmpty = false;
              }
              return Stack(
                alignment: Alignment.center,
                children: [
                  Visibility(
                    visible: state.histories.isEmpty,
                    child: const Column(
                      children: [
                        SizedBox(height: 150),
                        SizedBox(height: 16),
                        AppBodyText(
                          text: "Your history connect server is empty!",
                          size: 20,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                            width: 80,
                            height: 80,
                            child: Cstmgradient(color: AppColors.listgradient, child: Icon(Icons.hide_source, size: 50,),)),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: state.histories.isNotEmpty,
                    child: ListView.separated(
                      padding: const EdgeInsets.only(bottom: 16),
                      itemBuilder: (context, index) {
                        final history = state.histories[index];
                        return _buildHistoryItem(history);
                      },
                      itemCount: state.histories.length,
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 16);
                      },
                    ),
                  )
                ],
              );
            },
          ),
        ),
      
    );
  }

  Future<void> _deleteAllConfirmationDialog() async {
    return showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          
          title: const Text(
             'Clear All history',
          ),
          content: const Text(
           
                'Do you want to delete all?',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel', style: TextStyle(fontSize: 14, color: Colors.black),)
            ),
            TextButton(
              onPressed: () {
              getIt<AppDatabase>().deleteAllHistories((){
                    _refreshListView();
                  if (!context.mounted) return;
                  // Navigator.of(context).popUntil((route) => route.isFirst);
                  EasyLoading.showToast('All History connection is deleted');
                  // Future.delayed(Duration(seconds: 2), () {
                  //   setState(() {
                  //     //return _refreshListView();
                  //   });
                  // });
                  context.read<AppCubit>().fetchHistoryList();
                  Navigator.pop(context);
                });
                
              },
              child: const Text('Delete' , style: TextStyle( fontSize: 14, color: Colors.black),)
            ),
          ],
        );
      },
    );
  }

  Widget _buildHistoryItem(HistoryModel history) {
    final server = history.vpnServerModel;
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          SizedBox(
            width: 32,
            height: 32,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: Image.asset(
                fit: BoxFit.cover,
                 server.flag,
                width: 35,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBodyText(
                color: Colors.white,
                text: server.country ?? '',
              ),
            ],
          ),
          const Spacer(),
          AppBodyText(
            text: history.createAt.toStringFormatted(),
            size: 12,
            color: AppColors.primary,
          )
        ],
      ),
    );
  }
}
