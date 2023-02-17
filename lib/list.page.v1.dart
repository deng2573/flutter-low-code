import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class ListPageV1 extends StatefulWidget {
  const ListPageV1({
    Key? key,
  }) : super(key: key);

  @override
  State<ListPageV1> createState() => _ListPageV1State();
}

class _ListPageV1State extends State<ListPageV1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return _buildItem(index);
        },
        itemCount: 10,
      ),
    );
  }

  Widget _buildItem(int item) {
    return InkWell(
      enableFeedback: false,
      onTap: () {
        // Get<HomeController>.find
        // controller.openSamplePage(item);
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
                      '$item',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
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
