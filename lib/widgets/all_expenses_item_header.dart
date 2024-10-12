import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.icon,
    this.iconBackgroundColor,
    this.iconColor,
  });

  final String icon;
  final Color? iconBackgroundColor, iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60, maxHeight: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                // padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: iconBackgroundColor ?? const Color(0xffFAFAFA),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    icon,
                    colorFilter: ColorFilter.mode(
                      iconColor ?? const Color(0xff4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        SvgPicture.asset(
          Assets.imagesArrowRight,
          colorFilter: ColorFilter.mode(
            iconColor ?? const Color(0xff4EB7F2),
            BlendMode.srcIn,
          ),
        ),
      ],
    );
  }
}
