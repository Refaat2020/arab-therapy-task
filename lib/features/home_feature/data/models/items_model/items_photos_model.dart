class ItemPhotoModel{
  String? imageUrl;
  String ?title;
  String ?description;

  ItemPhotoModel({this.imageUrl, this.title, this.description});

  factory ItemPhotoModel.fromMap(dynamic map) {
    return ItemPhotoModel(
      imageUrl: map['url']?.toString(),
      title: map['title']?.toString(),
      description: map['description']?.toString(),
    );
  }
}