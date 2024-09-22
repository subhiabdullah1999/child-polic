import 'package:children_police/core/constants/colors_app.dart';
import 'package:flutter/material.dart';

class CustomListTileMyDrawer extends StatelessWidget {
  final String titel;
  final IconData? myIcon;
  final void Function()? onTap;
  const CustomListTileMyDrawer(
      {super.key, required this.titel, this.myIcon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        title: Text(
          titel,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: AppColors.whitet1, fontSize: 15),
        ),
        leading: Icon(myIcon, color: AppColors.whitet1),
      ),
    );
  }
}
