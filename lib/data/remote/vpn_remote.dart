import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
// import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
// import 'package:path_provider/path_provider.dart';

// import '../../core/network/base_request_http.dart';
import '../../domain/model/index.dart';
// import '../../utils/config.dart';

@injectable

class VpnRemote {
  Future<List<VpnServerModel>> getVpnServerList() async {
    try {
      final response = await rootBundle.loadString('assets/servers.json');
      final data = jsonDecode(response)['servers'];

      var index = 0;
      final results = <VpnServerModel>[];

      for (final json in data) {
        final vpnServer = VpnServerModel.fromJson(json, index++);
        results.add(vpnServer);
      }

      return results;
    } catch (error) {
      print('Error loading VPN server list: $error');
      return [];
    }
  }

  
  Future<String> download(String filePath) async {
    try {
      final String ovpnConfig = await rootBundle.loadString('$filePath');
      return ovpnConfig;
    } catch (error) {
      print('Error downloading OVPN config: $error');
      throw error; 
    }
  }
}




// Future<File> download(String filePath) async {
//   try {
//     final fileData = await rootBundle.load(filePath);
//     final bytes = fileData.buffer.asUint8List();
//     final file = await File(filePath).writeAsBytes(bytes);
//     return file;
//   } catch (error) {
//     print('Error downloading file: $error');
//     print('path file: $filePath');
//     return Future.error(error);
//   }
// }
//}

// class VpnRemote {
//   Future<List<VpnServerModel>> getVpnServerList() async {
//     final uri = Uri.parse(Config.vpnUrl);
//     final response = await baseRequest.get(uri);
//     final results = <VpnServerModel>[];

//     dynamic data;
//     try {
//       data = jsonDecode(response.body)['servers'];
//     } catch (error) {
//       final response = await rootBundle.loadString('assets/servers.json');
//       data = jsonDecode(response)['servers'];
//     }
//     var index = 0;
//     for (final json in data) {
//       final vpnServer = VpnServerModel.fromJson(json, index++);
//       results.add(vpnServer);
//     }
//     return results;
//   }

//   Future<File> download(String url) async {
//     final directory = await getTemporaryDirectory();
//     final filePath = '${directory.path}vpn.html';
//     final response = await http.get(Uri.parse(url));
//     return File(filePath).writeAsBytes(response.bodyBytes);
//   }
// }
