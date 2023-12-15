
import 'package:arab_therapy_task/core/constants/app_strings.dart';

import '../../../../../file_export.dart';

class SubscriptionWidget extends StatelessWidget {
 final String title;
 final String image;
  final String price;
  final String priceDetail;
  final Widget saveWidget;
  final Widget sessionCount;
  final Widget sessionLength;
  final bool showTitle;
  final bool ?common;


 const SubscriptionWidget(
      {super.key, required this.title,
        required this.showTitle,
        this.common,
        required this.image,
        required this.price,
        required this.priceDetail,
        required this.saveWidget,
        required this.sessionCount,
        required this.sessionLength});

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.rtl,
      children: [
        ///section title
        if (showTitle)
        Padding(
          padding:  EdgeInsets.only(right: 26.w),
          child: Text(AppStrings.selectSubscription,style: Theme.of(context).textTheme.displayMedium!.copyWith(height: 0.9,)),
        ),
        SizedBox(height: 22.h),
        Center(
          child: Padding(
            padding:  EdgeInsets.only(left: 22.w,right: 22.w),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderColor),
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.only(top: 14.h,right: 14.w,bottom: 22.h),
              child: Column(
                children: [
                  ///first part
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      SvgPicture.asset(image),
                      Column(
                        children: [
                          ///subscription title
                          Text(title,style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.w700,height: 0),),
                          saveWidget,
                          SizedBox(height: 10.h,),
                          Text("\$$price",style: Theme.of(context).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w700,height: 0),),
                          Text(priceDetail,style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.w700,height: 0),),

                        ],
                      ),

                      Container(
                        decoration:  BoxDecoration(
                          borderRadius:const BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10) ),
                          color: common == true ?AppColors.yellow:Colors.transparent,
                        ),
                        padding: EdgeInsets.only(left: 24.w,right: 24.w,top: 5.h,bottom: 5.h),
                        child: Center(
                          child: Text(AppStrings.common,style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.whiteColor)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  const Divider(color: AppColors.borderColor,),
                  SizedBox(height: 14.h),
                  ///session count
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      ///check box
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.borderColor,
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(2),
                        child: Center(
                          child: Icon(Icons.done,color: AppColors.primaryBlue,size: 15.sp),
                        ),
                      ),
                      SizedBox(width: 10.w,),
                      sessionCount,
                    ],
                  ),
                  SizedBox(height: 12.h),
                  ///session length
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      ///check box
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.borderColor,
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(2),
                        child: Center(
                          child: Icon(Icons.done,color: AppColors.primaryBlue,size: 15.sp),
                        ),
                      ),
                      SizedBox(width: 10.w,),
                      sessionLength,
                    ],
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      ///check box
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.borderColor,
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(2),
                        child: Center(
                          child: Icon(Icons.done,color: AppColors.primaryBlue,size: 15.sp),
                        ),
                      ),
                      SizedBox(width: 10.w,),
                      Text(AppStrings.youCanCancel,style: Theme.of(context)
                          .textTheme
                          .displaySmall),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
