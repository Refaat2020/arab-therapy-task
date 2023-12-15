import 'package:arab_therapy_task/core/constants/app_assets_roots.dart';

class DeserveHappyModel{

  String title;
  String subtitle;
  String image;

  DeserveHappyModel({ required this.title,required this.subtitle,required this.image});

  static List<DeserveHappyModel> listDeserveHappyModel = [
    DeserveHappyModel(title: " أدخل معلوماتك", subtitle: "لمساعدتنا في اختيار الاخصائي المناسب لك", image: AppImages.enterInformationIcon),
    DeserveHappyModel(title: " اختر الاشتراك المناسب", subtitle: " أسبوعي ، شهري ،كل 3 أشهر", image: AppImages.enterSubscruptionIcon),
    DeserveHappyModel(title: " ادفع بأمان", subtitle: "طرق دفع آمنة", image: AppImages.payIcon),
    DeserveHappyModel(title: "نحن بخدمتك 24 ساعة", subtitle: "سيتواصل فريق خدمة العملاء معك  لتحديد المختص الأنسب لحالتك", image: AppImages.customerIcon),
    DeserveHappyModel(title: "ابدأ العلاج", subtitle: "حدد موعد مع المختص الخاص بك", image: AppImages.startIcon),
  ];
}