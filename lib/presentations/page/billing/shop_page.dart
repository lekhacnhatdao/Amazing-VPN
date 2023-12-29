import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:openvpn/presentations/bloc/app_cubit.dart';
import 'package:openvpn/presentations/bloc/app_state.dart';
import 'package:openvpn/presentations/widget/index.dart';
import 'package:openvpn/resources/colors.dart';
import 'package:openvpn/resources/strings.dart';
import 'package:openvpn/utils/utils.dart';

enum UIItemType { subscription, consumable }

class UIItem {
  UIItem(this.productDetails, this.type);

  final UIItemType type;
  final ProductDetails productDetails;
}

extension UIItemExt on UIItem {
  int get groupBy {
    return type == UIItemType.subscription ? 1 : 0;
  }

  String get groupTitle {
    return type == UIItemType.subscription
        ? Strings.subscriptions
        : Strings.products;
  }

  String get action {
    return type == UIItemType.subscription ? Strings.subscribe : Strings.buy;
  }
}

@RoutePage()
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppTitleText(text: Strings.shop),
      ),
      body: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          final items = <UIItem>[];
          for (final element in state.consumables) {
            items.add(UIItem(element, UIItemType.consumable));
          }
          for (final element in state.subscriptions) {
            items.add(UIItem(element, UIItemType.subscription));
          }
          Utils.log('ShopPage', 'items: ${items.length}');
          return GroupedListView(
            padding: const EdgeInsets.only(bottom: 40),
            elements: items,
            groupBy: (item) => item.groupBy,
            itemBuilder: (context, item) {
              return _buildItem(item);
            },
            groupHeaderBuilder: (item) {
              return Container(
                height: 32,
                color: AppColors.accent,
                child: Center(child: AppLabelText(text: item.groupTitle)),
              );
            },
            useStickyGroupSeparators: true,
            // optional
            floatingHeader: true,
          );
        },
      ),
    );
  }

  Widget _buildItem(UIItem item) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 16) +
          const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppLabelText(
                  text: item.productDetails.title.split('(').firstOrNull ?? '',
                ),
                const SizedBox(height: 4),
                AppBodyText(
                  text: item.productDetails.price,
                  color: AppColors.textSecondary,
                  size: 12,
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          TextButton(
            onPressed: () {
              if (item.type == UIItemType.subscription || Platform.isIOS) {
                context
                    .read<AppCubit>()
                    .subscribeWithProduct(item.productDetails);
              } else {
                context.read<AppCubit>().buy(item.productDetails);
              }
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  side: BorderSide(color: AppColors.accent),
                ),
              ),
            ),
            child: AppLabelText(
              text: item.action,
              size: 12,
            ),
          )
        ],
      ),
    );
  }
}
