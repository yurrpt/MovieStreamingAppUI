import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constants/constants.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key, this.leading, required this.assetName, required this.name, required this.data, this.actions}) : super(key: key);

  final String assetName;
  final String name;
  final String data;
  final List<Widget>? actions;
  final Widget? leading;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AppBar(
        leading: leading,
        actions: actions,
        centerTitle: true,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              name,
            ),
            const SizedBox(width: 5),
            Text(
              data,
              style: const TextStyle(fontSize: 15, color: Colors.white, fontFamily: Constants.fontFamily, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        backgroundColor: Constants.bg2Color,
        elevation: 0,
      ),
    );
  }
}
