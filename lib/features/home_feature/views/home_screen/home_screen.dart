import 'package:arab_therapy_task/core/constants/app_strings.dart';
import 'package:arab_therapy_task/features/home_feature/views/home_screen/components/deserve_happy_widget.dart';
import 'package:arab_therapy_task/features/home_feature/views/home_screen/components/faq_widget.dart';
import 'package:arab_therapy_task/features/home_feature/views/home_screen/components/subscription_widget.dart';
import 'package:arab_therapy_task/features/home_feature/views/home_screen/components/why_arab_widget.dart';

import '../../../../file_export.dart';
import 'components/header_widget.dart';

class HomeScreen extends StatelessWidget {
  static const route = "/HomeScreen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///first section
            const HeaderWidget(),
            SizedBox(height: 38.h),

            ///second section
            const WhyArabWidget(),

            ///subscription number 1
            SubscriptionWidget(
              showTitle: true,
              title: AppStrings.aman,
              image: AppImages.pigeonIcon,
              price: "29.99",
              saveWidget: RichText(
                text: TextSpan(
                    text: AppStrings.save,
                    children: [
                      TextSpan(
                        text: "50% ",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      TextSpan(
                        text: AppStrings.firstSesstion,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                    style: Theme.of(context).textTheme.bodySmall),
              ),
              priceDetail: "لأول أسبوع ثم 59.99\$ أسبوعياً",
              sessionCount: RichText(
                textDirection: TextDirection.rtl,
                text: TextSpan(
                    text: "1",
                    children: [
                      TextSpan(
                        text: " جلسة صوتية أو فيديو أسبوعيًا",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontWeight: FontWeight.w700)),
              ),
              sessionLength: RichText(
                textDirection: TextDirection.rtl,
                text: TextSpan(
                    text: "مدة الجلسة ",
                    children: [
                      TextSpan(
                        text: "45 دقيقة",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                    ],
                    style: Theme.of(context).textTheme.displaySmall),
              ),
            ),

            ///subscription number 2
            SubscriptionWidget(
              showTitle: false,
              title: "حزمة الأمل",
              common: true,
              image: AppImages.plantIcon,
              price: "220",
              saveWidget: RichText(
                textDirection: TextDirection.rtl,
                text: TextSpan(
                    text: "وفر ",
                    children: [
                      TextSpan(
                        text: "20% ",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                    ],
                    style: Theme.of(context).textTheme.bodySmall),
              ),
              priceDetail: "تدفع شهرياًً",
              sessionCount: RichText(
                textDirection: TextDirection.rtl,
                text: TextSpan(
                    text: "4 ",
                    children: [
                      TextSpan(
                        text: "جلسات صوتية أو فيديو خلال شهر ",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      TextSpan(
                        text: "(45 دقيقة\n لكل جلسة)",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontWeight: FontWeight.w700, height: 0),
                      ),
                    ],
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontWeight: FontWeight.w700)),
              ),
              sessionLength: SizedBox(
                  width: ScreenUtil().screenWidth / 1.5,
                  child: Text(
                    "رسائل لا محدودة مع الأخصائي النفسي طيلة فترة الاشتراك",
                    style: Theme.of(context).textTheme.displaySmall,
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.rtl,
                  )),
            ),

            ///subscription number 3
            SubscriptionWidget(
              showTitle: false,
              title: "حزمة الرضا",
              image: AppImages.charityIcon,
              price: "559.99",
              saveWidget: RichText(
                textDirection: TextDirection.rtl,
                text: TextSpan(
                    text: "وفر ",
                    children: [
                      TextSpan(
                        text: "160% ",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                    ],
                    style: Theme.of(context).textTheme.bodySmall),
              ),
              priceDetail: "تدفع كل 3 أشهر",
              sessionCount: RichText(
                textDirection: TextDirection.rtl,
                text: TextSpan(
                    text: "12",
                    children: [
                      TextSpan(
                        text: " جلسة صوتية أو فيديو خلال",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      TextSpan(
                        text: " 3 أشهر (45\n دقيقة لكل جلسة)",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                    ],
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontWeight: FontWeight.w700)),
              ),
              sessionLength: SizedBox(
                  width: ScreenUtil().screenWidth / 1.5,
                  child: Text(
                    "رسائل لا محدودة مع الأخصائي النفسي طيلة فترة الاشتراك",
                    style: Theme.of(context).textTheme.displaySmall,
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.rtl,
                  )),
            ),
            SizedBox(height: ScreenUtil().screenHeight / 8),
            const DeserveHappyWidget(),
            SizedBox(height: ScreenUtil().screenHeight / 9),
            const FaqWidget()
          ],
        ),
      ),
    );
  }
}
