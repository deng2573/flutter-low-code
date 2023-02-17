import 'package:fair/fair.dart';
import 'package:flutter/material.dart';
import 'package:flutter_low_code/hot_reload/fair.model.dart';

import 'package:get/get.dart';
import 'package:flutter_low_code/home/controllers/home_controller.dart';

@FairPatch()
class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() {
        final items = controller.items;
        return ListView.builder(
          itemBuilder: (context, index) {
            final item = items[index];
            return _buildHomeItem(item);
          },
          itemCount: items.length,
        );
      }),
    );
  }

  Widget _buildHomeItem(FairModel item) {
    return InkWell(
      enableFeedback: false,
      onTap: () {
        Get.find<HomeController>().openSamplePage(item);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(6)),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(90, 226, 226, 226),
              offset: Offset(1, 1),
              blurRadius: 5,
            ),
            BoxShadow(
              color: Color.fromARGB(90, 226, 226, 226),
              offset: Offset(-1, 1),
              blurRadius: 5,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 10, right: 16),
                    child: Text(
                      item.name ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, top: 5, right: 16, bottom: 10),
                    child: Text(
                      item.path ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.chevron_right,
                color: Colors.grey[600],
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
