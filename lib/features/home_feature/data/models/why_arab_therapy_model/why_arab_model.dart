import 'package:arab_therapy_task/core/constants/app_assets_roots.dart';

class WhyArabModel{

  String image;
  String title;
  String description;

  WhyArabModel({required this.image,required this.title,required this.description});
  
  static List<WhyArabModel> listWhyArabModel = [
    WhyArabModel(image: AppImages.secretIcon, title: "سرية تامة", description: "كافة المعلومات التي تشاركها معنا سواء في مواقع التواصل أو بينك وبين الأخصائي خلال وأثناء الجلسات تخضع لسرية تامة."),

    WhyArabModel(image: AppImages.secrect2Icon, title: "أخصائي نفسي", description: "نوفر لك جلسات مع أخصائي نفسي أو طبيب نفسي عربي ذوي كفاءة عالية."),
  ];
}

// Remote class for handling API communication
// class RemoteDataSource {
//   Future<User> getUserDetails(int userId) {
//     // Make API request to fetch user details
//   }
//
//   Future<void> updateUserDetails(User user) {
//     // Make API request to update user details
//   }
// }
//
// // Repository class acting as an intermediary
// class UserRepository {
//   final RemoteDataSource remoteDataSource;
//
//   UserRepository(this.remoteDataSource);
//
//   Future<User> getUserDetails(int userId) {
//     return remoteDataSource.getUserDetails(userId);
//   }
//
//   Future<void> updateUserDetails(User user) {
//     return remoteDataSource.updateUserDetails(user);
//   }
// }
//
//
// // BLoC class utilizing the repository
// class UserBloc {
//   final UserRepository userRepository;
//
//   UserBloc(this.userRepository);
//
//   void fetchUserDetails(int userId) {
//     // Triggered by UI, fetches user details using the repository
//     userRepository.getUserDetails(userId).then((user) {
//       // Process and emit user details to update UI
//     });
//   }
//
//   void updateUserDetails(User user) {
//     // Triggered by UI, updates user details using the repository
//     userRepository.updateUserDetails(user).then((_) {
//       // Handle success or error
//     });
//   }
// }
