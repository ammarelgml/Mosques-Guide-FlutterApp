import 'package:flutter/material.dart';
import 'package:mosques_guide_app/view/home/widgets/drawer_item.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildDrawerItems(context),
        ],
      ),
    );
  }

  Widget buildDrawerItems(BuildContext context) {
    return Column(
        children: DrawerItems.all
            .map((e) => ListTile(
                  leading: Icon(
                    e.icon,
                    color: Colors.white,
                  ),
                  title: Text(
                    e.title,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onTap: () {},
                ))
            .toList());
  }
}
