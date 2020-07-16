import 'package:men_baitak/features/bag/domain/entities/bag_item.dart';
import 'package:men_baitak/features/category/domain/entities/product.dart';
import 'package:men_baitak/features/category/infrastructure/models/product_model.dart';

class BagItemModel extends BagItem {
  const BagItemModel({ProductModel product, String quantity})
      : super(
          product: product,
          quantity: quantity,
        );

  BagItemModel.fromJson(Map<String, dynamic> json)
      : super(
          product: json['product'],
          quantity: json['quantity'],
        );

  Map<String, dynamic> toJson() => {
        'product': product,
        'quantity': quantity,
      };
}
