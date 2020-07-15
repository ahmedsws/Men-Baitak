import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:men_baitak/features/bag/infrastructure/models/bag_item_model.dart';
part 'bag_event.freezed.dart';

@freezed
abstract class BagEvent with _$BagEvent {
  const factory BagEvent.addToBag(BagItemModel bagItem) = AddToBag;
  const factory BagEvent.deleteFromBag(BagItemModel bagItem) = DeleteFromBag;
  const factory BagEvent.getBagItems() = GetBagItems;
}

// part of 'bag_bloc.dart';

// @immutable
// abstract class BagEvent {}

// class AddToBag extends BagEvent {
//   AddToBag({this.bagItem});

//   final BagItemModel bagItem;
// }

// class DeleteFromBag extends BagEvent {
//   DeleteFromBag({this.bagItem});

//   final BagItemModel bagItem;
// }

// class GetBagItems extends BagEvent {}
