
import 'package:arab_therapy_task/core/constants/app_strings.dart';
import 'package:arab_therapy_task/features/home_feature/views/items_screen/items_screen.dart';

import '../../../../../file_export.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: AppColors.green0,
      padding: EdgeInsets.only(top: 40.h,left: 14.w,right: 14.w),
      child: Column(
        children: [
          ///icon and button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppButton(height: 40.h, width: ScreenUtil().screenWidth/4.5, name: AppStrings.startNowButton, onTap: ()=>GoRouter.of(context).pushNamed(ItemsScreen.route), containerColor:AppColors.primaryBlue , borderColor: AppColors.primaryBlue, radius: 4,style: Theme.of(context).textTheme.displayMedium!.copyWith(color: AppColors.whiteColor),),
              SvgPicture.asset(AppImages.logoSvg),
            ],
          ),
          SizedBox(height: ScreenUtil().screenHeight/6.5,),
          SvgPicture.asset(AppImages.brainIcon),
          SizedBox(height: 5.h),
          Text(AppStrings.feelLonely,style: Theme.of(context).textTheme.displayLarge),
          SizedBox(height: 14.h),
          Padding(
            padding:  EdgeInsets.only(left: 20.w,right: 20.w),
            child: Text(AppStrings.talkWithDoctor,style: Theme.of(context).textTheme.displayMedium!.copyWith(height: 0),textAlign: TextAlign.center),
          ),
          SizedBox(height: 30.h),
          AppButton(height: 45.h, width: ScreenUtil().screenWidth/2, name: AppStrings.startNowButton, onTap: ()=>GoRouter.of(context).pushNamed(ItemsScreen.route), containerColor:AppColors.primaryBlue , borderColor: AppColors.primaryBlue, radius: 4,style: Theme.of(context).textTheme.displayMedium!.copyWith(color: AppColors.whiteColor),),
          SizedBox(height: ScreenUtil().screenHeight/9),
        ],
      ),
    );
  }
}
