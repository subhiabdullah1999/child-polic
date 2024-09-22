import 'package:children_police/core/constants/colors_app.dart';
import 'package:children_police/view/widgets/home_widgets/custom_divider_myDrawer.dart';
import 'package:children_police/view/widgets/home_widgets/custom_listTile_myDrawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.blacColor4,
      width: Get.width / 2.2,
      shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
          side: BorderSide(color: AppColors.goldcolor, width: 0.5)),
      child: Container(
        margin: const EdgeInsets.only(left: 2, right: 2, top: 25),
        child: ListView(
          children: [
            CustomListTileMyDrawer(
              onTap: () {},
              titel: "حول التطبيق",
              myIcon: Icons.group_outlined,
            ),
            const DividerMyDrawer(),
            CustomListTileMyDrawer(
              onTap: () {},
              titel: "اتصل بنا",
              myIcon: Icons.phone_outlined,
            ),
            const DividerMyDrawer(),
          ],
        ),
      ),
    );
  }
}
