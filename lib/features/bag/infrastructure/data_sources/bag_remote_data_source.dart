import 'package:men_baitak/features/authentication/infrastructure/user.dart';
import 'package:men_baitak/features/bag/infrastructure/models/bag_item_model.dart';

abstract class BagRemoteDataSource {
  Future<void> addToBag(BagItemModel bagItem, User user);
  Future<List<BagItemModel>> getBagItems(User user);
  Future<void> deleteBagItem(BagItemModel bagItem, User user);
}
