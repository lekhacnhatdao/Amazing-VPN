// import 'dart:io';

// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:openvpn/presentations/route/app_router.gr.dart';
// import 'package:openvpn/presentations/widget/index.dart';
// import 'package:openvpn/resources/colors.dart';
// import 'package:openvpn/resources/strings.dart';
// import 'package:openvpn/utils/config.dart';
// import 'package:share_plus/share_plus.dart';
// import 'package:url_launcher/url_launcher.dart';

// enum HomeMenu {
//   premium,
//   shareWithFriend,
//   feedBack,
//   termOfUse,
//   privacyPolicy,
//   applicationVersion;
// }

// const _homeMenus = HomeMenu.values;

// class HomeLeftMenuPage extends StatelessWidget {
//   const HomeLeftMenuPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return ColoredBox(
//       color: theme.scaffoldBackgroundColor,
//       child: Column(
//         children: [
//           const SizedBox(height: 100),
//           const AppTitleText(text: Config.appName),
//           const AppBodyText(
//             text: 'version: ${Config.version}',
//             color: AppColors.textSecondary,
//             size: 12,
//           ),
//           const SizedBox(height: 40),
//           ..._homeMenus.map(
//             (menu) => ListTile(
//               onTap: () {
//                 _navigate(context, menu);
//               },
//               title: AppBodyText(
//                 text: menu.name,
//               ),
//               trailing:_homeMenus.last == false? const Icon(
//                 Icons.chevron_right,
//                 color: AppColors.textPrimary,
//               ) :  Text(Config.version),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _navigate(BuildContext context, HomeMenu menu) {
//     switch (menu) {
//       case HomeMenu.premium:
//         AutoRouter.of(context).push(const PremiumRoute());
//         break;
//       case HomeMenu.shareWithFriend:
//         if (Platform.isAndroid) {
//           Share.share(
//             'Check out this app: '
//             '${Config.storeAppUrl}',
//           );
//         } else {
//           // TODO(QuyenLX): implement for iOS here
//         }

//         break;
//       case HomeMenu.feedBack:
//         _launchURL(Config.storeAppUrl);
//         break;
//       // case HomeMenu.contactUs:
//       //   break;
//       case HomeMenu.termOfUse:
//         _launchURL(Config.termOfUseUrl);
//         break;
//       case HomeMenu.privacyPolicy:
//         _launchURL(Config.privacyPolicyUrl);
//         break;
//       case HomeMenu.applicationVersion:
//       Config.version;
//         break;

//     }
//   }

//   Future<void> _launchURL(String link) async {
//     final url = Uri.parse(link);
//     await launchUrl(url);
//   }
// }

// extension HomeMenuExt on HomeMenu {
//   String get name {
//     switch (this) {
//       case HomeMenu.premium:
//         return Strings.upgradePremium;
//       case HomeMenu.shareWithFriend:
//         return Strings.share;
//       case HomeMenu.feedBack:
//         return Strings.rate;
//       case HomeMenu.termOfUse:
//         return Strings.termOfUse;
//       case HomeMenu.privacyPolicy:
//         return Strings.privacyPolicy;
//       case HomeMenu.applicationVersion:
//         return Strings.applicationVersion;
//     }
//   }
// }
