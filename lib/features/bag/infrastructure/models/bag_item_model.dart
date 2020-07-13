import 'package:men_baitak/features/bag/domain/entities/bag_item.dart';

class BagItemModel extends BagItem {
  const BagItemModel(String title, imgPath, code, price, quantity)
      : super(
          title: title,
          imgPath: imgPath,
          code: code,
          price: price,
          quantity: quantity,
        );
}
