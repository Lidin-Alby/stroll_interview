import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll_interview/models/my_icon.dart';

class BottomNavigationButton extends StatelessWidget {
  const BottomNavigationButton({
    super.key,
    required this.icon,
    this.size,
    this.color,
    this.notification,
  });
  final MyIcon icon;
  final double? size;
  final Color? color;
  final String? notification;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      customBorder: CircleBorder(),
      child: Ink(
        height: 50,
        width: 50,
        child: Center(
          child: Badge(
            offset: Offset(8, 0),
            isLabelVisible: notification != null,
            backgroundColor: Theme.of(context).colorScheme.primary,
            label: Text(
              notification.toString(),
              style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
            ),
            child: SvgPicture.asset(
              height: size,
              width: size,
              myIcons[icon],
              colorFilter: ColorFilter.mode(
                color ?? Color.fromRGBO(111, 110, 124, 1),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
