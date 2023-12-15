
import 'package:arab_therapy_task/core/constants/app_strings.dart';
import 'package:arab_therapy_task/file_export.dart';

import '../../../data/models/why_arab_therapy_model/why_arab_model.dart';

class WhyArabWidget extends StatelessWidget {
  const WhyArabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.rtl,
      children: [
        Padding(
          padding:  EdgeInsets.only(right: 26.w,left: 26.w),
          child: Text(AppStrings.whyArab,style: Theme.of(context).textTheme.displayMedium!.copyWith(height: 0.9,)),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: ScreenUtil().screenHeight/2.1, minHeight: ScreenUtil().screenHeight/3),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView.separated(
                scrollDirection:Axis.horizontal ,
                shrinkWrap: true,
                primary: true,
                padding: EdgeInsets.only(right: 22.w,top: 22.h,left: 22.w),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.borderColor),
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.only(top: 10.h,left: 30.w,right: 22.w,bottom: 14.h),
                    child: Column(
                      children: [
                        Image.asset(WhyArabModel.listWhyArabModel[index].image,height: ScreenUtil().screenHeight/5,),
                        Text(WhyArabModel.listWhyArabModel[index].title,style: Theme.of(context).textTheme.displayMedium!.copyWith(height: 0,)),
                        SizedBox(height: 6.h),
                        SizedBox(
                            width: ScreenUtil().screenWidth/2.5,
                            child: Text(WhyArabModel.listWhyArabModel[index].description,style: Theme.of(context).textTheme.bodySmall!.copyWith(height: 0,),textAlign: TextAlign.center,)),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 22.w), itemCount: WhyArabModel.listWhyArabModel.length),
          ),
        ),
        SizedBox(height: 30.h),
      ],
    );
  }
}
