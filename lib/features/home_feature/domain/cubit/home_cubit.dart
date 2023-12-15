import 'package:arab_therapy_task/core/extensions/task_excuter.dart';
import 'package:arab_therapy_task/features/home_feature/data/models/faq_model/faq_model.dart';
import 'package:arab_therapy_task/features/home_feature/data/models/items_model/items_model.dart';
import 'package:arab_therapy_task/features/home_feature/data/repo/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../file_export.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  HomeRepo homeRepo = locator<HomeRepo>();

  ItemsModel ?itemsModel;
  int pageNumber = 1;
 int? totalPages;
  bool isScrollFinished = false;
  ScrollController itemsScrollController = ScrollController();
  void openQuestion(int index){
    FaqModel.listFaqModel[index].open = !FaqModel.listFaqModel[index].open;
    emit(HomeInitial());
  }

  Future<void> getItems({bool paginated = false,}) async {
    if (paginated == false) {
      pageNumber = 1;
    }
    if (pageNumber == 1) {
      emit(HomeLoading());
    } else {
      if (pageNumber > totalPages!) {
        return;
      }
      // loading = true;
      emit(HomePaginatedLoading());
    }
    var notification = homeRepo.getItems(pageNumber,);
    Logger().t("dd");
    await notification.excute(
      onFailed: (failed) => emit(HomeError(error: failed.message)),
      onSuccess: (value) {
        if (pageNumber == 1) {
          itemsModel = value;
         var totalPagesPre = itemsModel!.totalPhotos!~/10;
          totalPages = (itemsModel!.totalPhotos! % 10) == 0 ? totalPagesPre:totalPagesPre+1;
          Logger().t(totalPages);
          if (itemsModel!.listOfPhoto!.isEmpty) {
            emit(HomeEmpty());
            return;
          }
        } else {
          // loading = false;
          itemsModel!.listOfPhoto?.addAll(value.listOfPhoto!);
        }
        emit(HomeDone());
      },
    );
  }
  addScrollListener() {
    itemsScrollController.addListener(() async {
      final endOfScroll = itemsScrollController.offset == itemsScrollController.position.maxScrollExtent;
      if (endOfScroll && state is HomePaginatedLoading == false && totalPages! > pageNumber) {
        pageNumber++;
        if (!isScrollFinished) {
          getItems(paginated: true,);
        }
      }
    });
  }


}
