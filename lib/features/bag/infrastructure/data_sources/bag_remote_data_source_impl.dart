import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:men_baitak/features/authentication/infrastructure/user.dart';
import 'package:men_baitak/features/bag/infrastructure/data_sources/bag_remote_data_source.dart';
import 'package:men_baitak/features/bag/infrastructure/models/bag_item_model.dart';

class BagRemoteDataSourceImpl extends BagRemoteDataSource {
  @override
  Future<void> addToBag(BagItemModel bagItem, User user) async {
    await Firestore.instance
        .document('users/${user.id}')
        .collection('bag')
        .add(bagItem.toJson());
  }

  @override
  Future<void> deleteBagItem(BagItemModel bagItem, User user) async {
    final query = await Firestore.instance
        .document('users/${user.id}')
        .collection('bag')
        .where('product.code', isEqualTo: bagItem.product.code)
        .getDocuments();

    for (final doc in query.documents) await doc.reference.delete();
  }

  @override
  Future<List<BagItemModel>> getBagItems(User user) async {
    return await Firestore.instance
        .document('users/${user.id}')
        .collection('bag')
        .getDocuments()
        .then((value) => value.documents
            .map((item) => BagItemModel.fromJson(item.data))
            .toList());
  }
}

// final bagItem = BagItemModel(
//   product: product,
//   quantity: quantity,
// );
