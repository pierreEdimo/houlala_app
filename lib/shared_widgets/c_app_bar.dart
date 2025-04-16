import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final Color? color;

  const CustomAppBar({super.key, this.leading, this.title, this.actions, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
      color: color ?? const Color(0xFFf4efe8),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  leading != null ? leading! : Container(),
                  leading != null && title != null
                      ? const SizedBox(width: 10)
                      : Container(),
                  title != null ? Expanded(child: title!) : Container(),
                ],
              ),
            ),
            actions != null
                ? Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: actions!,
                  ),
                )
                : Container(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(85);
}
