import 'items_photos_model.dart';

class ItemsModel{
  int ?totalPhotos;
  int? offset;
  int ?limit;

  List<ItemPhotoModel>?listOfPhoto;

  ItemsModel({this.totalPhotos, this.offset, this.limit, this.listOfPhoto});

  factory ItemsModel.fromMap(dynamic map) {
    var temp;
    return ItemsModel(
      totalPhotos: null == (temp = map['total_photos']) ? null : (temp is num
          ? temp.toInt()
          : int.tryParse(temp)),
      offset: null == (temp = map['offset']) ? null : (temp is num ? temp
          .toInt() : int.tryParse(temp)),
      limit: null == (temp = map['limit']) ? null : (temp is num
          ? temp.toInt()
          : int.tryParse(temp)),
      listOfPhoto: null == (temp = map['photos']) ? [] : (temp is List
          ? temp.map((map) => ItemPhotoModel.fromMap(map)).toList()
          : []),
    );
  }


}