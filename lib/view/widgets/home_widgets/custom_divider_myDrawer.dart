import 'package:children_police/core/constants/colors_app.dart';
import 'package:flutter/material.dart';

class DividerMyDrawer extends StatelessWidget {
  const DividerMyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Divider(
        color: AppColors.goldcolor,
      ),
    );
  }
}
