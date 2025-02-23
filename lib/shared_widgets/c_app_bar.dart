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
      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
      color: const Color(0xFFf4efe8),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Column(
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90.0);
}
