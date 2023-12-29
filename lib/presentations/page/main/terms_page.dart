import 'package:flutter/material.dart';
import 'package:openvpn/resources/strings.dart';
import 'package:openvpn/utils/config.dart';


class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Terms of Service'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Terms of Service',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'By downloading or using the app, these terms will automatically apply to you – you should make sure therefore that you read them carefully before using the app. You’re not allowed to copy or modify the app, any part of the app, or our trademarks in any way. You’re not allowed to attempt to extract the source code of the app, and you also shouldn’t try to translate the app into other languages or make derivative versions. The app itself, and all the trademarks, copyright, database rights, and other intellectual property rights related to it, still belong to ${Strings.companyName}. ${Strings.companyName}is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you’re paying for. The ${Config.appName} app stores and processes personal data that you have provided to us, to provide our Service. It’s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone’s security features and it could mean that the ${Strings.appName} app wont work properly or at all. The app does use third-party services that declare their Terms and Conditions. Link to Terms and Conditions of third-party service providers used by the app AdMob You should be aware that there are certain things that ${Strings.companyName} will not take responsibility for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi or provided by your mobile network provider, but ${Strings.companyName} cannot take responsibility for the app not working at full functionality if you don’t have access to Wi-Fi, and you don’t have any of your data allowance left. If you’re using the app outside of an area with Wi-Fi, you should remember that the terms of the agreement with your mobile network provider will still apply. As a result, you may be charged by your mobile provider for the cost of data for the duration of the connection while accessing the app, or other third-party charges. In using the app, you’re accepting responsibility for any such charges, including roaming data charges if you use the app outside of your home territory (i.e. region or country) without turning off data roaming. If you are not the bill payer for the device on which you’re using the app, please be aware that we assume that you have received permission from the bill payer for using the app. Along the same lines, ${Strings.companyName} cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged – if it runs out of battery and you can’t turn it on to avail the Service, ${Strings.companyName} cannot accept responsibility. With respect to${Strings.companyName}’s responsibility for your use of the app, when you’re using the app, it’s important to bear in mind that although we endeavor to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. ${Strings.companyName} accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on this functionality of the app. At some point,we may wish to update the app. The app is currently available on Android – the requirements for the system(and for any additional systems we decide to extend the availability of the app to) may change, and you’ll need to download the updates if you want to keep using the app. ${Strings.companyName} does not promise that it will always update the app so that it is relevant to you and/or works with the Android version that you have installed on your device. However, you promise to always accept updates to the application when offered to you, We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Changes to This Terms and Conditions',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'We may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Terms and Conditions on this page.These terms and conditions are effective as of 2023-01-01',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),

            // TermsItem(
            //   'Shanghaivpn - VPN Fast & Secure',
            //   'The following terms and conditions (the "Terms") govern your use of the VPN services we provide (the "Service") and their associated website domains (the "Site"). These Terms constitute a legally binding agreement (the "Agreement") between you and Shanghaivpn. (the "Shanghaivpn").\nShanghaivpn may update the Terms from time to time without notice. Any changes in the Terms will be incorporated into a revised Agreement that we will post on the Site. Unless otherwise specified, such changes shall be effective when they are posted.',
            // ),
            // TermsItem(
            //   '1. Usage Policy',
            //   'You agree to comply with all applicable laws and regulations in connection with your use of this service. You further agree that you, or anyone using the service under your account, will not engage in any of the following activities, and that any of the following activities constitute grounds for termination of your account: Sending or transmitting unsolicited advertisements or content ("spam") over the Service, via e-mail or any other communication channel. Sending, transmitting or receiving any illegal content over the Service, including but not limited to child pornography, whether via e-mail, peer-to-peer file sharing, or any other electronic communication channel. Uploading, downloading, posting, reproducing, or distribution of any content protected by copyright, or any other proprietary right, without first having obtained permission of the owner of the proprietary content. Engaging in any conduct that restricts or inhibits any other subscriber from using or enjoying the Service. Attempting to access, probe, or connect to computing devices without proper authorization (i.e., any form of "hacking"). Posting to or transmitting through the Service any unlawful, harmful, threatening, abusive, harassing, hateful, racially, ethnically or otherwise objectionable material of any kind, including, but not limited to, any material which encourages conduct that may constitute a criminal offense, give rise to civil liability or otherwise violate any applicable local, national or international law. Using the Service for anything other than lawful purposes. Violations of this Usage Policy may result in termination of your account, without any refund of amounts previously paid for the Service. Additionally, you may be held responsible for any and all damages incurred by Shanghaivpn , including any amounts charged by any outside entity due to said violation(s), including without limitation attorney’s fees and costs.Shanghaivpn enables you to download software, software updates or patches, or other utilities and tools onto your computer or Internet-enabled device ("Software"). Shanghaivpn grants to you a non-exclusive, limited license to use the Software solely for the purpose stated by Shanghaivpn at the time the Software is made available to you and in accordance with these Terms. Modifying, distributing to unauthorized parties, reverse engineering, or otherwise using the Software in any way not expressly authorized by Shanghaivpn, is strictly prohibited.',
            // ),
            // TermsItem(
            //   '2. Privacy Policy',
            //   'We are committed to your privacy, we will not collect your personal identifying information, nor will we collect or log traffic data or browsing activity from individual users connected to our VPN. When you use our app we may collect the following information: \nInternet service provider \nDevice OS version \nDevice manufacturer and model \nLanguage of the device \n App version \nTimes when connected to our service, and the total amount of data transferred per day, etc. We store this to be able to deliver the best possible network experience to you. We need this information to deploy and optimize our servers to ensure that we can provide high-quality services. We analyze this information generically and keep the data secure. Our software may send diagnostic data to a third party analytics provider for the purpose of identifying connection errors and possible bugs in our application. The information collected is generic in nature and does not contain personally identifying information.',
            // ),

            // TermsItem(
            //   '3. Disclaimers',
            //   'We will strive to prevent interruptions to the Site and the Service. However, these are provided on an "as is" and "as available" basis, and we do not warrant, either expressly or by implication, the accuracy of any materials or information provided through the Site or Service, or their suitability for any particular purpose. We expressly disclaim all warranties of any kind, whether express or implied, including, but not limited to, warranties of merchantability or fitness for a particular purpose, or non-infringement. We do not make any warranty that the Service will meet your requirements, or that it will be uninterrupted, timely, secure, or error free, or that defects, if any, will be corrected. You acknowledge that you access the Site and the Service at your own discretion and risk. The Site may contain links to third party websites ("Third Party Websites"). Access to Third Party Websites is at your own risk, and Shanghaivpn is not responsible for the accuracy, availability or reliability of any information, goods, data, opinions, advice or statements made available on Third Party Websites. These links may also lead to Third Party Websites containing information that some people may find inappropriate or offensive. The Third Party Websites are not under the control of Shanghaivpn and, as such, Shanghaivpn is not liable for any damage or loss caused or alleged to be caused by or in connection with use of or reliance on any Third Party Website. The inclusion of any links to Third Party Websites on the Site are provided solely as a convenience to you and does not imply an endorsement or recommendation by Shanghaivpn of any third party resources or content. Shanghaivpn is not responsible for any form of transmission received from any link, nor is Shanghaivpn responsible if any of these links are not working appropriately. You are responsible for viewing and abiding by any privacy statements and terms of use posted in connection with Third Party Websites, and these Third Party Websites are not governed by this Agreement. We do not control, nor are we responsible for, any data, content, services, or products (including software) that you access, download, receive or buy while using the Service. We may, but do not have any obligation to, block information, transmissions or access to certain information, services, products or domains to protect the Service, our network, the public or our users. We are not a publisher of third-party content accessed through the Service and are not responsible for the content, accuracy, timeliness or delivery of any opinions, advice, statements, messages, services, graphics, data or any other information provided to or by third parties as accessible through the Service. VPN service coverage, speeds, server locations and quality may vary. Shanghaivpn will attempt to make the Service available at all times. However, the Service may be subject to unavailability for a variety of factors beyond our control including but not limited to emergencies, third party service failures, transmission, equipment or network problems or limitations, interference or signal strength, and may be interrupted, refused, limited or curtailed. We are not responsible for data, messages or pages lost, not delivered, delayed or misdirected because of interruptions or performance issues with the Service or communications services or networks. We may impose usage or service limits, suspend service, or block certain kinds of usage in our sole discretion to protect users or the Service. The accuracy and timeliness of data received is not guaranteed; delays or omissions may occur. Shanghaivpn does not as a matter of ordinary practice actively monitor user sessions for inappropriate behavior, nor do we maintain direct logs of customers \' Internet activities. However, Shanghaivpn reserves the right to investigate matters we consider to be violations of these Terms. We may, but are not obligated to, in our sole discretion, and without notice, remove, block, filter or restrict by any means any materials or information that we consider to be actual or potential violations of the restrictions set forth in these Terms, and any other activities that may subject Shanghaivpn or its customers to liability. Shanghaivpn disclaims any and all liability for any failure on its part to prevent such materials or information from being transmitted over the Service and/or into your computing device.',
            // ),
          ],
        ),
      ),
    );
  }
}

class TermsItem extends StatelessWidget {
  final String title;
  final String content;

  const TermsItem(this.title, this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Text(
          content,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
