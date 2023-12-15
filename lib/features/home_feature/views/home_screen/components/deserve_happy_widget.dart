
import 'package:arab_therapy_task/core/constants/app_strings.dart';

import '../../../../../file_export.dart';
import '../../../data/models/deserve_happy_model/deserve_happy_model.dart';

class DeserveHappyWidget extends StatelessWidget {
  const DeserveHappyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      color: AppColors.lightBlue,
      width: double.infinity,
      padding: EdgeInsets.only(top: 30.h,left: 22.w,right: 22.w,bottom: 30.h),

      child: Container(

        width: double.infinity,
        decoration: const BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        child: Column(
          textDirection: TextDirection.rtl,
          children: [
            SizedBox(height: 30.h),
            Text(AppStrings.youDeserve,style: Theme.of(context).textTheme.displayMedium,textDirection: TextDirection.rtl,),
            SizedBox(height: 30.h),
            ListView.builder(
              itemCount: DeserveHappyModel.listDeserveHappyModel.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Column(
                children: [
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      SvgPicture.asset(DeserveHappyModel.listDeserveHappyModel[index].image),
                      SizedBox(width: 12.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(DeserveHappyModel.listDeserveHappyModel[index].title,style: Theme.of(context).textTheme.displayMedium!.copyWith(height: 0),),
                          SizedBox(
                              width: ScreenUtil().screenWidth/1.5,
                              child: Text(DeserveHappyModel.listDeserveHappyModel[index].subtitle,style: Theme.of(context).textTheme.labelSmall!.copyWith(height: 0),textDirection: TextDirection.rtl,)),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                ],
              ),)
          ],
        ),
      ),
    );
  }
}
