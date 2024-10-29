import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/responsive_controller.dart';
import 'screens/mobile_layout.dart';
import 'screens/tablet_layout.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ResponsiveController responsiveController = Get.put(ResponsiveController());

  @override
  Widget build(BuildContext context) {
    // Mengupdate lebar layar saat widget dibangun
    responsiveController.updateScreenWidth(MediaQuery.of(context).size.width);

    return MaterialApp(
      title: 'Responsive Layout',
      home: Scaffold(
        body: Obx(() {
          // Menggunakan controller untuk menentukan layout yang tepat
          if (responsiveController.isMobile) {
            return MobileLayout(); // Kembali ke mobile layout
          } else {
            return TabletLayout(); // Kembali ke tablet layout
          }
        }),
      ),
    );
  }
}
