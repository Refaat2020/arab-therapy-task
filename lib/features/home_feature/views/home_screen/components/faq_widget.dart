import 'package:arab_therapy_task/core/constants/app_strings.dart';
import 'package:arab_therapy_task/features/home_feature/domain/cubit/home_cubit.dart';

import '../../../../../file_export.dart';
import '../../../data/models/faq_model/faq_model.dart';

class FaqWidget extends StatelessWidget {
  const FaqWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.watch<HomeCubit>();
    return Column(
      children: [
        Text(AppStrings.faqString, style: Theme.of(context).textTheme.displayMedium!),
        Directionality(
          textDirection: TextDirection.rtl,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: FaqModel.listFaqModel.length,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(
                left: 22.w, right: 22.w, top: 14.h, bottom: 14.h),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                homeCubit.openQuestion(index);
                // helpCubit.openFaq(index);
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.lightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                padding: EdgeInsets.only(
                    left: 10.w, right: 10.w, top: 18.h, bottom: 18.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: ScreenUtil().screenWidth / 1.4,
                          child: Text(FaqModel.listFaqModel[index].title,
                              style: Theme.of(context).textTheme.displaySmall),
                        ),
                        const Spacer(),
                        Icon(
                          FaqModel.listFaqModel[index].open == true
                              ? Icons.keyboard_arrow_right_rounded
                              : Icons.keyboard_arrow_down_rounded,
                          color: AppColors.green1,
                          size: 25,
                        ),
                      ],
                    ),
                    if (FaqModel.listFaqModel[index].open == true) ...[
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        FaqModel.listFaqModel[index].description,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                color: AppColors.subtitleColor, height: 0),
                        textAlign: TextAlign.center,
                      ),
                    ]
                  ],
                ),
              ),
            ),
            separatorBuilder: (context, index) => SizedBox(height: 14.h),
          ),
        )
      ],
    );
  }
}
