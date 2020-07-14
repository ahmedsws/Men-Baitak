import 'package:men_baitak/features/bag/domain/entities/bag_item.dart';
import 'package:men_baitak/features/category/domain/entities/category.dart';

class BagItemModel extends BagItem {
  const BagItemModel(Product product, String quantity)
      : super(
          product: product,
          quantity: quantity,
        );
}
