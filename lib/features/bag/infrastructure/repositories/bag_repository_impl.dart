import 'package:men_baitak/features/authentication/infrastructure/user.dart';
import 'package:men_baitak/features/bag/domain/repositories/bag_repository.dart';
import 'package:men_baitak/features/bag/infrastructure/data_sources/bag_remote_data_source.dart';
import 'package:men_baitak/features/bag/infrastructure/data_sources/bag_remote_data_source_impl.dart';
import 'package:men_baitak/features/bag/infrastructure/models/bag_item_model.dart';

class BagRepositoryImpl extends BagRepository {
  BagRepositoryImpl({BagRemoteDataSource remoteDataSource})
      : remoteDataSource = remoteDataSource ?? BagRemoteDataSourceImpl();

  final BagRemoteDataSource remoteDataSource;

  @override
  Future<void> addToBag(BagItemModel bagItem, User user) {
    remoteDataSource.addToBag(bagItem, user);
  }

  @override
  Future<void> deleteBagItem(BagItemModel bagItem, User user) {
    remoteDataSource.deleteBagItem(bagItem, user);
  }

  @override
  Future<List<BagItemModel>> getBagItems(User user) =>
      remoteDataSource.getBagItems(user);
}
