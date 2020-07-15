import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:men_baitak/features/bag/infrastructure/models/bag_item_model.dart';
part 'bag_state.freezed.dart';
//part of 'bag_bloc.dart';

@freezed
abstract class BagState with _$BagState {
  const factory BagState.bagLoading() = BagLoading;
  const factory BagState.bagItemsLoaded(List<BagItemModel> bagItems) =
      BagItemsLoaded;
  const factory BagState.bagItemAdded(BagItemModel bagItem) = BagItemAdded;
  const factory BagState.bagItemDeleted(BagItemModel bagItem) = BagItemDeleted;
}

// @immutable
// abstract class BagState {
//   const BagState({this.bagItems = const []});
//   final List<BagItemModel> bagItems;
// }

// class BagLoading extends BagState {}

// class BagItemsLoaded extends BagState {
//   BagItemsLoaded({List<BagItemModel> bagItems}) : super(bagItems: bagItems);
// }

// class BagItemDeleted extends BagState {
//   BagItemDeleted({BagItemModel bagItem});
// }

// class BagItemAdded {
//   BagItemAdded(BagItemModel bagItemModel);
// }
