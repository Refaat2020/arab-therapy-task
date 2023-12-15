
import 'package:provider/single_child_widget.dart';

import '../../features/home_feature/domain/cubit/home_cubit.dart';
import '../../file_export.dart';



class AppCubits{
  static List<SingleChildWidget> appCubit() => [
    BlocProvider<HomeCubit>(
      create: (context) => HomeCubit(),
    ),
  ];

}
