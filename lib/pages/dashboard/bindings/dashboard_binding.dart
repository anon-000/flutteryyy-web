import 'package:flutter_web_task/pages/dashboard/controllers/dashboard_controller.dart';
import 'package:get/get.dart';

///
/// Created by Auro on 01/05/23 at 4:20 PM
///

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
  }
}
