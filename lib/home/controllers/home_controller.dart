import 'package:flutter_low_code/list.page.v1.dart';
import 'package:flutter_low_code/list.page.v2.dart';
import 'package:get/get.dart';

import 'package:flutter_low_code/hot_reload/fair.page.dart';
import 'package:flutter_low_code/hot_reload/fair.model.dart';

class HomeController extends GetxController {
  final items = <FairModel>[].obs;

  @override
  void onReady() async {
    super.onInit();
    await _loadItems();
  }

  Future<void> _loadItems() async {
    //    String? name;
    // String? path;
    // Map<String, dynamic>? arguments;
    items.value = [
      {
        'name': '热更新-ListView',
        'path': 'assets/fair/lib_list.page.v1.fair.json',
        'arguments': {},
      },
      {
        'name': '热更新-GridView',
        'path': 'assets/bundle/lib_list.page.v2.fair.json',
        'arguments': {},
      }
    ].map((e) => FairModel.fromJson(e)).toList();
  }

  void openSamplePage(FairModel item) {
    Get.to(const ListPageV1());
    // Get.to(FairPage(model: item));
    // Get.to(const ListPageV2());
  }
}
