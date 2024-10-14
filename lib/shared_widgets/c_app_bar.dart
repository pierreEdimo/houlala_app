import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;

  const CustomAppBar({super.key, this.leading, this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
      color: Colors.white,
      child: Column(
        children: [
          Expanded(child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    leading != null ? leading! : Container(),
                    leading != null && title != null ? const   SizedBox(width: 10) : Container(),
                    title != null ? Flexible(child: title!) : Container(),
                  ],
                ),
              ),
              actions != null ? Expanded(
                flex: 1,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: actions!,
                  ),
                ),
              ) : Container(),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90.0);
}
