import 'package:flutter/material.dart';
import 'package:houlala_app/helpers/constants.dart';

class CustomListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? suffix;
  final VoidCallback? onTap;

  const CustomListTile({
    super.key,
    this.title,
    this.leading,
    this.suffix,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: <Widget>[
            Row(
              spacing: 10,
              children: <Widget>[leading ?? Container(), title ?? Container()],
            ),
            suffix ?? Container()
          ],
        ),
      ),
    );
  }
}
