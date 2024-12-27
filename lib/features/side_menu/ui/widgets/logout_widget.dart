import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../../theming/colors.dart';
import '../../../../theming/local_variables.dart';

import 'counter_badge.dart';

class logOutItem extends StatelessWidget {
  const logOutItem({



    required this.itemCount ,

    required this.iconSrc,
    required this.title,
    required this.press,
    required this.color,
  }) ;


  final int? itemCount;
  final String iconSrc, title;
  final VoidCallback press;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: InkWell(

        onTap: press,
        child: Row(
          children: [
            SizedBox(width: kDefaultPadding),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 15, right: 5),

                child: Row(
                  children: [
                    SvgPicture.asset(
                      iconSrc,
                      height: 20,
                      color: colorManager.kBadgeColor,
                    ),
                    SizedBox(width: kDefaultPadding * 0.75),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color:colorManager.kBadgeColor,
                      ),
                    ),
                    Spacer(),
                    if (itemCount != null) CounterBadge(count: itemCount!),
                  ],

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
