import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class ListPageV2 extends StatefulWidget {
  const ListPageV2({
    Key? key,
  }) : super(key: key);

  @override
  State<ListPageV2> createState() => _ListPageV2State();
}

class _ListPageV2State extends State<ListPageV2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.75,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
        ),
        itemBuilder: (_, index) {
          return _buildItem(index);
        },
        itemCount: 10,
      ),
    );
  }

  Widget _buildItem(int item) {
    return Container(
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
      child: Text(
        '$item',
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
    );
  }
}
