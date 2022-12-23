
class ItemModel{
  int itemId;
  String itemTitle;
  String description;
  String companyName;
  double itemPriceCurrent;
  double itemPriceOld;
  int itemQuantity;
  bool itemIsSelected=false;

  ItemModel({required this.itemId,required this.itemTitle,required this.description, required this.companyName,required this.itemPriceCurrent,required this.itemPriceOld,required this.itemQuantity,required this.itemIsSelected, });
}