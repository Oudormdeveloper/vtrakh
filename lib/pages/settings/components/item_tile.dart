import 'package:flutter/cupertino.dart';
import 'package:vtrakh/core.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({
    Key? key,
    this.text,
    this.icon,
    this.isTrailing = false,
  }) : super(key: key);
  final String? text;
  final IconData? icon;
  final bool isTrailing;
  @override
  Widget build(BuildContext context) {
    var txtTheme = Get.theme.textTheme;
    return Column(
      children: [
        ListTile(
          horizontalTitleGap: 2.0,
          onTap: () {},
          tileColor: cWhite,
          leading: Icon(
            icon,
            color: cPrimary,
          ),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  text!,
                  style: txtTheme.subtitle1!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              isTrailing
                  ? Text(
                      'English',
                      style: txtTheme.subtitle1!.copyWith(
                        color: cSecondary,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  : SizedBox(),
              Icon(
                CupertinoIcons.right_chevron,
                size: 18.0,
                color: cSecondary,
              ),
            ],
          ),
          // trailing: Icon(
          //   CupertinoIcons.right_chevron,
          //   size: 18.0,
          // ),
        ),
        SizedBox(height: 1)
      ],
    );
  }
}
