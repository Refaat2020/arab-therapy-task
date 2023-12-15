
import 'package:arab_therapy_task/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String name;
  final double height;
  final double width;
  final Function onTap;
  final Color containerColor;
  final Color borderColor;
  final double radius;
  final Color? textColors;
  final Widget? widget;

  final TextAlign? textAlign;
  final Color? smallTextColors;
  final TextStyle?style;
  const AppButton(
      {required this.height,
      required this.width,
      required this.name,
      required this.onTap,
      required this.containerColor,
      required this.borderColor,
      required this.radius,
      this.textColors,
      this.widget,
        this.textAlign,
        this.smallTextColors,
        this.style
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.only(bottom: 5.h),
        decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(radius.r),
            border: Border.all(color: borderColor, width: 0.8)),
        child: widget ??
            Center(
              child: Text(
                name,
                style: style??
                    Theme.of(context).textTheme.displaySmall
                        !.copyWith(color: AppColors.whiteColor,fontWeight: FontWeight.w600,),
                textAlign:textAlign ,
              ),
            ),
      ),
    );
  }
}
