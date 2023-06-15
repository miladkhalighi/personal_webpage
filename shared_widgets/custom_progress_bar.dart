
import 'package:flutter/material.dart';

import '../components/app_colors.dart';
import '../components/app_dimentions.dart';
import '../components/app_text_styles.dart';

class CustomProgressBar extends StatefulWidget {
  final String title;
  final double progress;
  const CustomProgressBar({
    required this.title,
    required this.progress,
    super.key,
  });

  @override
  State<CustomProgressBar> createState() => _CustomProgressBarState();
}

class _CustomProgressBarState extends State<CustomProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController animCtr;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animCtr = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    animation = Tween<double>(begin: 0, end: widget.progress).animate(animCtr)
      ..addListener(() {
        setState(() {});
      });

    animCtr.forward();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: size.height * 0.06,
              width: size.width / 2.5,
              decoration: BoxDecoration(
                color: AppColors.onPrimary,
                borderRadius: BorderRadius.circular(25),
              ),
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: animation.value,
                child: FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: animation.value,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.secondary,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.secondary,
                              blurRadius: 8,
                              offset: const Offset(4, 0))
                        ]),
                  ),
                ),
              ),
            ),
            Positioned(
              left: AppDimentions.medium,
              top: 0,
              bottom: 0,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.title,
                  style: AppTextStyles.bodyMedium
                      .copyWith(color: AppColors.onSecondary),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          width: AppDimentions.medium,
        ),
        Text(
          '${(animation.value * 100).toInt()} %',
          style: AppTextStyles.bodyLarge,
        )
      ],
    );
  }
}
