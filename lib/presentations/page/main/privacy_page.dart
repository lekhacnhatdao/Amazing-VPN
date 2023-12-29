import 'package:flutter/material.dart';
import 'package:openvpn/resources/strings.dart';
import 'package:openvpn/utils/config.dart';


class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Privacy Policy'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${Strings.companyName} built the ${Config.appName} app as a Free app. This SERVICE is provided by ${Strings.companyName} at no cost and is intended for use as is.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service. If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy. The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at ${Strings.appName} unless otherwise defined in this Privacy Policy.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Information Collection and Use',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information. The information that we request will be retained by us and used as described in this privacy policy. The app does use third-party services that may collect information used to identify you. Link to the privacy policy of third-party service providers used by the app: AdMob',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Log Data',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Cookies',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device \'s internal memory This Service does not use these “cookies” explicitly. However, the app may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service..',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Service Providers',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'We may employ third-party companies and individuals due to the following reasons:To facilitate our Service; To provide the Service on our behalf; To perform Service-related services; or To assist us in analyzing how our Service is used. We want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Security',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Links to Other Sites',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Children’s Privacy',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13 years of age. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do the necessary actions.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Changes to This Privacy Policy',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. This policy is effective as of 2023-11-18',
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
            Text(
              'If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at ${Strings.mailContact}.',
              style: TextStyle(fontSize: 16),
            ),

            // PrivacyPolicyItem(
            //   'Shanghaivpn - VPN Fast & Secure',
            //   'In the following policy, Shanghaivpn refers to the service provided by Shanghaivpn ("The Company" or "We") the Shanghaivpn on Apple Store application ("Service"). This Privacy Policy explains (i) what information we collect through your access to and use of our Services, (ii) how we use that information, and (iii) to what extent security we provide to protect that information. By installing and using the Service, you agree to the terms outlined in this Privacy Policy.',
            // ),
            // PrivacyPolicyItem(
            //   'Philosophy',
            //   'We use the information we collect for the following purposes: Service Delivery: Providing, maintaining, and enhancing our Services to ensure a seamless user experience. Personalization: Tailoring content, recommendations, and features based on your preferences. Communication: Responding to your inquiries, providing customer support, and sending transactional and promotional communications. Analytics: Analyzing usage patterns and trends to improve the functionality and performance of our Services.',
            // ),
            // PrivacyPolicyItem(
            //   'How We Use Your Information',
            //   'Our Company is committed to protecting and respecting your privacy. It is our overriding policy to collect as little user information as possible to ensure a private and anonymous user experience when using the Service. Below is a summary of the way we deal with information when you use the Service.',
            // ),
            // PrivacyPolicyItem(
            //   'Shanghaivpn is a No-Logs VPN service',
            //   'When you use the Service, we do NOT do any of the following: Log users’ traffic or the content of any communications Discriminate against devices, protocols, or applications Throttle your Internet connection You can find details about our no-logs VPN policy here.',
            // ),
            // PrivacyPolicyItem(
            //   'Data we collect and why we collect it',
            //   'Account creation: To create an account, in order to use our Service, we do not ask your name or surname. All you need to do is email address. We do store the email address you have entered when creating an account for communication and anti-abuse purposes. If you are referred to the Service by a friend or some other third-party who is participating in our referral program, we may associate your account with the referrer to appropriately credit the referrer. Support: When you submit support requests or bug reports. Payment: We pay based on Apple Store or Google Play. How we use this personal data: Your email address is not shared with any third parties. We mainly use it for account-related questions, communication, and recovery. By signing up to our Service, you agree to receive communications from us, which may include promotional emails too. You can stop receiving emails from us by following the unsubscribe instructions included in every email we send. The information you provide when you contact our support team is processed for analytics purposes (such as to obtain aggregate statistics on the number of Apple Store complaints), but they are not combined with any personal data. We do not do any targeted advertising or any profiling. Right to Access, Rectification, Erasure, Portability, and right to lodge a complaint: Through the Service, you can directly access, edit, delete or export personal data processed by the Company in your use of the Service. If your account has been suspended for a breach of our terms and conditions, and you would like to exercise the rights related to your personal data, you can make a request to our support team. In case of violation of your rights, you have the right to lodge a complaint to the competent supervisory authority. Data retention: We retain essential data (such as email and device id) on active accounts in order to provide services. This data is deleted when your account is deleted. We use analytics software to help us deliver a higher quality of service. For instance, looking in aggregate at the geographic distribution of the Service\'s users allows us to understand which countries have the most need for the Service and allocate development resources towards providing the best service in those countries. Viewing longer term trends in the number of visitors from different countries also allows us to identify quickly which countries have started to block the Service and take measures to counteract those blocks. None of the software on our apps will ever access or track any location-based information from your device at any time.',
            // ),
            // PrivacyPolicyItem(
            //   'Data security',
            //   'We take data security very seriously. Access to our infrastructure and Secure Core servers is tightly controlled. All of the Shanghaivpn servers are encrypted and we do not log VPN session data. Offline backups may be stored periodically, but these are also secured.',
            // ),
            // PrivacyPolicyItem(
            //   'Disclosure of your information',
            //   'We will only disclose the limited user data we possess when compelled by law for the purposes of the prevention, investigation, detection or prosecution of criminal offences or the execution of criminal penalties, including the safeguarding against and the prevention of threats to public security. Foreign authorities\' data requests must be approved by competent Swiss authorities. Under Swiss law, it is obligatory to notify the target of a surveillance request, although such notification may come from the authorities and not from the Company.',
            // ),
            // PrivacyPolicyItem(
            //   'Changes to our Privacy Policy',
            //   'The Company reserves the right to periodically review and change this Policy, and will notify users who have enabled the notification preference about any change. Continued use of the Service will be deemed as acceptance of such changes.',
            // ),
            //  PrivacyPolicyItem(
            //   'Questions',
            //   'If you have any questions or comments regarding the data and your privacy, feel free to contact us through our online form.',
            // ),
          ],
        ),
      ),
    );
  }
}

class PrivacyPolicyItem extends StatelessWidget {
  final String title;
  final String content;

  const PrivacyPolicyItem(this.title, this.content, {super.key});

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
