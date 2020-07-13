import 'package:men_baitak/features/bag/infrastructure/models/bag_item_model.dart';

abstract class BagRepository {
  Future<void> addToBag();
  Future<List<BagItemModel>> getBagItems();
}
