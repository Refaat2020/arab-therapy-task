import 'package:arab_therapy_task/features/home_feature/views/home_screen/home_screen.dart';
import 'package:arab_therapy_task/file_export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const route = "/SplashScreen";


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration( milliseconds: 900),() => GoRouter.of(context).go(HomeScreen.route),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green0,
      body: Center(
        child: SvgPicture.asset(AppImages.logoSvg),
      ),
    );
  }
}
