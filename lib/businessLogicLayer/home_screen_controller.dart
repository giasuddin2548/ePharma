import 'package:ephrama/dataLayer/models/ItemModel.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController{
    var itemList=<ItemModel>[].obs;
    var tempItemList=<ItemModel>[].obs;
    var totalMedicinePrice=0.0.obs;
    var savedAmount=15.0.obs;
    int selectedIndexForDetails=0;
    var bkash=false.obs;
    var nagad=false.obs;
    var cart=false.obs;
    var condition=false.obs;


    @override
  void onInit() {
      dummyData();
    super.onInit();
  }

  void dummyData() {
      itemList.clear();
      itemList.add(ItemModel(itemId: 0, itemTitle: 'Ecospirin 150Mg Tablet 14’S', description: des, companyName: 'Cipla Limited Respiratory', itemPriceOld: 90, itemPriceCurrent: 85, itemQuantity: 0, itemIsSelected: false));
      itemList.add(ItemModel(itemId: 1, itemTitle: 'Napa 500mg Tablet 14’S', description: des, companyName: 'ACME Limited', itemPriceOld: 120, itemPriceCurrent: 105, itemQuantity: 0, itemIsSelected: false));
      itemList.add(ItemModel(itemId: 2, itemTitle: 'Rolac 10mg Tablet 14’S', description: des, companyName: 'Beximco Pharmaceuticals Ltd', itemPriceOld: 105, itemPriceCurrent: 90, itemQuantity: 0, itemIsSelected: false));
      itemList.add(ItemModel(itemId: 3, itemTitle: 'Calbo D 500mg Tablet 14’S', description: des, companyName: 'Incepta Pharmaceuticals', itemPriceOld: 40, itemPriceCurrent: 30, itemQuantity: 0, itemIsSelected: false));
      itemList.add(ItemModel(itemId: 4, itemTitle: 'Monas 10mg Tablet 14’S', description: des, companyName: 'Renata Limited', itemPriceOld: 70, itemPriceCurrent: 55, itemQuantity: 0, itemIsSelected: false));
      itemList.add(ItemModel(itemId: 5, itemTitle: 'Max pro 20mg Tablet 14’S', description: des, companyName: 'Cipla Limited Respiratory', itemPriceOld: 30, itemPriceCurrent: 85, itemQuantity: 0, itemIsSelected: false));
      itemList.add(ItemModel(itemId: 6, itemTitle: 'Napa 500mg Tablet 14’S', description: des, companyName: 'ACME Limited', itemPriceOld: 130, itemPriceCurrent: 105, itemQuantity: 0, itemIsSelected: false));
      itemList.add(ItemModel(itemId: 7, itemTitle: 'Rolac 10mg Tablet 14’S', description: des, companyName: 'Beximco Pharmaceuticals Ltd', itemPriceOld: 105,itemPriceCurrent: 90, itemQuantity: 0, itemIsSelected: false));
      itemList.add(ItemModel(itemId: 8, itemTitle: 'Calbo D 500mg Tablet 14’S', description: des, companyName: 'Incepta Pharmaceuticals', itemPriceOld: 35, itemPriceCurrent: 30, itemQuantity: 0, itemIsSelected: false));
      itemList.add(ItemModel(itemId: 9, itemTitle: 'Monas 10mg Tablet 14’S', description: des, companyName: 'Renata Limited', itemPriceOld: 60, itemPriceCurrent: 55, itemQuantity: 0, itemIsSelected: false));
      itemList.add(ItemModel(itemId: 0, itemTitle: 'Max pro 20mg Tablet 14’S', description: des, companyName: 'Cipla Limited Respiratory', itemPriceOld: 90, itemPriceCurrent: 85, itemQuantity: 0, itemIsSelected: false));
      searchData('');
    }
    
    var des="""Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.""";

  void searchData(String v) {
      tempItemList.clear();
      if(v.isEmpty){
        for (var element in itemList) {
          tempItemList.add(element);
        }
      }else{
        for (var element in itemList) {
          if(element.itemTitle.toLowerCase().contains(v.toLowerCase()) ||element.companyName.toLowerCase().contains(v.toLowerCase()) ||element.description.toLowerCase().contains(v.toLowerCase()) ){
            tempItemList.add(element);
          }
        }
      }
      update();
    }
}