import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:openvpn/presentations/page/billing/premium_page.dart';

import 'package:openvpn/presentations/page/main/privacy_page.dart';
import 'package:openvpn/presentations/page/main/terms_page.dart';

import 'package:openvpn/presentations/widget/impl/ratting.dart';

import 'package:openvpn/resources/assets.gen.dart';
import 'package:openvpn/resources/colors.dart';
import 'package:openvpn/utils/config.dart';
import 'package:share_plus/share_plus.dart';


class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('Setting' , style: TextStyle(color: Colors.white, fontSize: 18),),
        

      ),
      body: Column(
        children: [
          //ignore: lines_longer_than_80_chars
          SettingListTile(title: 'Go VIP', ispre: true ,svgWidget: Assets.icons.icPower.svg(), onPressed: (){
            // ignore: lines_longer_than_80_chars
            Navigator.push(context, MaterialPageRoute(builder: (_)=>  const PremiumPage()));
          },),
          // ignore: lines_longer_than_80_chars
          // SettingListTile(title: 'Recent'  ,svgWidget: Assets.icons.icClock.svg(), onPressed: (){
          //   // ignore: lines_longer_than_80_chars
          //   Navigator.push(context, MaterialPageRoute(builder: (_)=>  const HistoryPage()));
          // },),
          // ignore: lines_longer_than_80_chars
          SettingListTile(title: 'Share with friends' ,svgWidget: Assets.icons.icVector.svg(), onPressed: (){
            // ignore: lines_longer_than_80_chars
            Share.share('${Config.storeAppUrl}');
          },),
          // ignore: lines_longer_than_80_chars
          SettingListTile(title: 'Feedback' ,svgWidget: Assets.icons.icLike.svg(), onPressed: () {
             showBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        
                        return const RatingDialog();
                      },
                    );
                    // _launchURL(Config.storeAppUrl);
                    // showDialog(
                    //   context: context,
                    //   builder: (BuildContext context) {
                    //     return const RatingDialog();
                    //   },
                    // );
                  },),
          //ignore: lines_longer_than_80_chars
          SettingListTile(title: 'Terms of Use' ,svgWidget: Assets.icons.icNoteText.svg(), onPressed: (){
            // ignore: lines_longer_than_80_chars
            Navigator.push(context, MaterialPageRoute(builder: (_)=>  const TermsPage()));
          },),
          // ignore: lines_longer_than_80_chars
          SettingListTile(title: 'Privacy Policy' ,svgWidget: Assets.icons.icSecuritysafe.svg(), onPressed: (){
            // ignore: lines_longer_than_80_chars
            Navigator.push(context, MaterialPageRoute(builder: (_)=>  const PrivacyPage ()));
          },),
           // ignore: lines_longer_than_80_chars
           SettingListTile(title: 'Version' , islast: true,svgWidget: Assets.icons.icVerify.svg(), onPressed: (){
            // ignore: lines_longer_than_80_chars
          
          },),

        ],
       
      ),
    ); 
  }
  
}
class SettingListTile extends StatelessWidget {

  const SettingListTile({
    super.key,
    required this.svgWidget,
    required this.title,
    this.onPressed,
    this.color, this.ispre, this.islast,
  });
  final Widget svgWidget;
  final String title;
  final VoidCallback? onPressed;
  final Color? color;
  final bool? ispre;
  final bool? islast;

  @override
  Widget build(BuildContext context) {
    return  Container(
    
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 31, 31, 31),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1, // Độ rộng mà drop shadow lan ra
            blurRadius: 3, // Độ mờ của drop shadow
            offset: const Offset(0, 3), // Vị trí của drop shadow
          )
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: ListTile(
        onTap: onPressed,
        leading:ispre??false? Image.asset('assets/images/crown.png') : svgWidget,
        title: Text(
          title,
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
        trailing:  InkWell(
            // ignore: lines_longer_than_80_chars
            child: islast ?? false  ? const Text(Config.version) : ispre?? false ?  Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              // ignore: lines_longer_than_80_chars
              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xffFB5607) ,
              
              ),
              child: Text('Try now', style: TextStyle(color: Colors.white),),
            ) : const Icon(
          Icons.arrow_forward_ios_rounded,
          color: AppColors.primary,
        )),
      ),
    );
  }
  
}
// class RatingDialog extends StatefulWidget {
//   const RatingDialog({super.key});

//   @override
//   _RatingDialogState createState() => _RatingDialogState();
// }

// class _RatingDialogState extends State<RatingDialog> {
  // int _rating = 5;

  // @override
  // Widget build(BuildContext context) {
  //   return AlertDialog(
  //     backgroundColor: AppColors.scaffoldBackgroundColor,
  //     content: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //         ClipRRect(
  //           borderRadius: const BorderRadius.only(
  //             topLeft: Radius.circular(20),
  //             topRight: Radius.circular(20),
  //           ),
  //           child: Image.asset(
  //             Assets.images.imageRatebg.path,
  //           ),
  //         ),
  //         const SizedBox(
  //           height: 10,
  //         ),
  //         const AppBodyText(
  //           text: 'Do you like ${Strings.appName} ?',
  //           textAlign: TextAlign.center,
  //           size: 20,
  //           color: AppColors.black,
  //         ),
  //         AppBodyText(
  //           text: Platform.isIOS
  //               ? 'Tap a star to rate on the App Store'
  //               : 'Tap a star to rate on the Google Play',
  //           textAlign: TextAlign.center,
  //           size: 14,
  //           color: AppColors.black,
  //         ),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             for (int i = 1; i <= 5; i++)
  //               GestureDetector(
  //                 onTap: () {
  //                   setState(() {
  //                     _rating = i;
  //                   });
  //                 },
  //                 child: Padding(
  //                   padding: const EdgeInsets.all(5.0),
  //                   child: i <= _rating
  //                       ? Assets.icons.icStar.svg(width: 35)
  //                       : Assets.icons.icUnStar.svg(width: 35),
  //                 ),
  //               ),
  //           ],
  //         ),
  //         const SizedBox(height: 16),
  //         AppButtons(
  //           text: 'Submit',
  //           textColor: AppColors.whiteText,
  //           backgroundColor: AppColors.colorBlue,
  //           onPressed: () {
  //             Navigator.of(context).pop();
  //             debugPrint('User rated: $_rating stars');
  //             if (_rating > 3) {
  //               _launchURL(Config.storeAppUrl);
  //               // StoreRedirect.redirect(
  //               //   androidAppId: "com.Padoventi.JackpotVPN",
  //               // );
  //             }
  //           },
  //         ),
  //         const SizedBox(height: 10),
  //         GestureDetector(
  //           onTap: () {
  //             Navigator.pop(context);
  //           },
  //           child: const Padding(
  //             padding: EdgeInsets.symmetric(vertical: 10.0),
  //             child: AppLabelText(
  //               size: 20,
  //               text: 'Not now',
  //               color: AppColors.colorBlue,
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }
//}

