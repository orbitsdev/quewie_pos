import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:quewie_pos/features/auth/login_page.dart';
import 'package:quewie_pos/features/pos/post_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(QUEWIEPOSAPP());
}

class QUEWIEPOSAPP extends StatefulWidget {
  const QUEWIEPOSAPP({ Key? key }) : super(key: key);

  @override
  _QUEWIEPOSAPPState createState() => _QUEWIEPOSAPPState();
}

class _QUEWIEPOSAPPState extends State<QUEWIEPOSAPP> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QUEWIE POS',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/pos', page:()=> PostPage())
      ],
      );
  }
}