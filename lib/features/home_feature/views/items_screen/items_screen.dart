import 'package:arab_therapy_task/features/home_feature/domain/cubit/home_cubit.dart';
import 'package:arab_therapy_task/features/home_feature/views/items_screen/components/item_card_widget.dart';
import 'package:arab_therapy_task/file_export.dart';
import 'package:lottie/lottie.dart';

import '../../../../common/widgets/loading_widget.dart';
import 'components/therpy_widget.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});

  static const route = "/ItemsScreen";


  @override
  _ItemsScreenState createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HomeCubit>().getItems();
    context.read<HomeCubit>().addScrollListener();
  }

  @override
  Widget build(BuildContext context) {
   final homeCubit =  context.watch<HomeCubit>();
    return Scaffold(
      body: CustomScrollView(
        controller: homeCubit.itemsScrollController,
        slivers: <Widget>[
          SliverAppBar(
            title: SvgPicture.asset(AppImages.logoSvg),
            floating: false,
            elevation: 1.2,
            backgroundColor: AppColors.green0,
            pinned: true,
            leading: IconButton(onPressed: () => GoRouter.of(context).pop(),
                icon: const Icon(Icons.arrow_back, color: AppColors.green1,)),
          ),
          SliverPersistentHeader(
            delegate: MySliverPersistentHeaderDelegate(),
            floating: false,
          ),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if (state is HomeLoading) {
                return const SliverToBoxAdapter(child: LoadingWidget());
              }else if (state is HomeError) {
                return  SliverToBoxAdapter(child: Text(state.error??"",style: Theme.of(context).textTheme.displayMedium,));
              }
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) =>ItemCardWidget(itemPhotoModel: homeCubit.itemsModel!.listOfPhoto![index]),
                  childCount:homeCubit.itemsModel!.listOfPhoto!.length ,
                ),
              );
            },
          ),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if (state is HomePaginatedLoading) {
                return SliverToBoxAdapter(child: Center(
                  child:  Lottie.asset(
                    AppImages.loadingAnimations,
                    height: 50.h,
                  ),
                ),);
              }
              return const SliverToBoxAdapter();
            },
          )
        ],
      ),
    );
  }
}
