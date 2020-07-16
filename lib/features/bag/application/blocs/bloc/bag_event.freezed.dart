// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'bag_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BagEventTearOff {
  const _$BagEventTearOff();

  AddToBag addToBag(BagItemModel bagItem) {
    return AddToBag(
      bagItem,
    );
  }

  DeleteFromBag deleteFromBag(BagItemModel bagItem) {
    return DeleteFromBag(
      bagItem,
    );
  }

  GetBagItems getBagItems() {
    return const GetBagItems();
  }
}

// ignore: unused_element
const $BagEvent = _$BagEventTearOff();

mixin _$BagEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addToBag(BagItemModel bagItem),
    @required Result deleteFromBag(BagItemModel bagItem),
    @required Result getBagItems(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addToBag(BagItemModel bagItem),
    Result deleteFromBag(BagItemModel bagItem),
    Result getBagItems(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addToBag(AddToBag value),
    @required Result deleteFromBag(DeleteFromBag value),
    @required Result getBagItems(GetBagItems value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addToBag(AddToBag value),
    Result deleteFromBag(DeleteFromBag value),
    Result getBagItems(GetBagItems value),
    @required Result orElse(),
  });
}

abstract class $BagEventCopyWith<$Res> {
  factory $BagEventCopyWith(BagEvent value, $Res Function(BagEvent) then) =
      _$BagEventCopyWithImpl<$Res>;
}

class _$BagEventCopyWithImpl<$Res> implements $BagEventCopyWith<$Res> {
  _$BagEventCopyWithImpl(this._value, this._then);

  final BagEvent _value;
  // ignore: unused_field
  final $Res Function(BagEvent) _then;
}

abstract class $AddToBagCopyWith<$Res> {
  factory $AddToBagCopyWith(AddToBag value, $Res Function(AddToBag) then) =
      _$AddToBagCopyWithImpl<$Res>;
  $Res call({BagItemModel bagItem});
}

class _$AddToBagCopyWithImpl<$Res> extends _$BagEventCopyWithImpl<$Res>
    implements $AddToBagCopyWith<$Res> {
  _$AddToBagCopyWithImpl(AddToBag _value, $Res Function(AddToBag) _then)
      : super(_value, (v) => _then(v as AddToBag));

  @override
  AddToBag get _value => super._value as AddToBag;

  @override
  $Res call({
    Object bagItem = freezed,
  }) {
    return _then(AddToBag(
      bagItem == freezed ? _value.bagItem : bagItem as BagItemModel,
    ));
  }
}

class _$AddToBag implements AddToBag {
  const _$AddToBag(this.bagItem) : assert(bagItem != null);

  @override
  final BagItemModel bagItem;

  @override
  String toString() {
    return 'BagEvent.addToBag(bagItem: $bagItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddToBag &&
            (identical(other.bagItem, bagItem) ||
                const DeepCollectionEquality().equals(other.bagItem, bagItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bagItem);

  @override
  $AddToBagCopyWith<AddToBag> get copyWith =>
      _$AddToBagCopyWithImpl<AddToBag>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addToBag(BagItemModel bagItem),
    @required Result deleteFromBag(BagItemModel bagItem),
    @required Result getBagItems(),
  }) {
    assert(addToBag != null);
    assert(deleteFromBag != null);
    assert(getBagItems != null);
    return addToBag(bagItem);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addToBag(BagItemModel bagItem),
    Result deleteFromBag(BagItemModel bagItem),
    Result getBagItems(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addToBag != null) {
      return addToBag(bagItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addToBag(AddToBag value),
    @required Result deleteFromBag(DeleteFromBag value),
    @required Result getBagItems(GetBagItems value),
  }) {
    assert(addToBag != null);
    assert(deleteFromBag != null);
    assert(getBagItems != null);
    return addToBag(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addToBag(AddToBag value),
    Result deleteFromBag(DeleteFromBag value),
    Result getBagItems(GetBagItems value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addToBag != null) {
      return addToBag(this);
    }
    return orElse();
  }
}

abstract class AddToBag implements BagEvent {
  const factory AddToBag(BagItemModel bagItem) = _$AddToBag;

  BagItemModel get bagItem;
  $AddToBagCopyWith<AddToBag> get copyWith;
}

abstract class $DeleteFromBagCopyWith<$Res> {
  factory $DeleteFromBagCopyWith(
          DeleteFromBag value, $Res Function(DeleteFromBag) then) =
      _$DeleteFromBagCopyWithImpl<$Res>;
  $Res call({BagItemModel bagItem});
}

class _$DeleteFromBagCopyWithImpl<$Res> extends _$BagEventCopyWithImpl<$Res>
    implements $DeleteFromBagCopyWith<$Res> {
  _$DeleteFromBagCopyWithImpl(
      DeleteFromBag _value, $Res Function(DeleteFromBag) _then)
      : super(_value, (v) => _then(v as DeleteFromBag));

  @override
  DeleteFromBag get _value => super._value as DeleteFromBag;

  @override
  $Res call({
    Object bagItem = freezed,
  }) {
    return _then(DeleteFromBag(
      bagItem == freezed ? _value.bagItem : bagItem as BagItemModel,
    ));
  }
}

class _$DeleteFromBag implements DeleteFromBag {
  const _$DeleteFromBag(this.bagItem) : assert(bagItem != null);

  @override
  final BagItemModel bagItem;

  @override
  String toString() {
    return 'BagEvent.deleteFromBag(bagItem: $bagItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteFromBag &&
            (identical(other.bagItem, bagItem) ||
                const DeepCollectionEquality().equals(other.bagItem, bagItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bagItem);

  @override
  $DeleteFromBagCopyWith<DeleteFromBag> get copyWith =>
      _$DeleteFromBagCopyWithImpl<DeleteFromBag>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addToBag(BagItemModel bagItem),
    @required Result deleteFromBag(BagItemModel bagItem),
    @required Result getBagItems(),
  }) {
    assert(addToBag != null);
    assert(deleteFromBag != null);
    assert(getBagItems != null);
    return deleteFromBag(bagItem);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addToBag(BagItemModel bagItem),
    Result deleteFromBag(BagItemModel bagItem),
    Result getBagItems(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFromBag != null) {
      return deleteFromBag(bagItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addToBag(AddToBag value),
    @required Result deleteFromBag(DeleteFromBag value),
    @required Result getBagItems(GetBagItems value),
  }) {
    assert(addToBag != null);
    assert(deleteFromBag != null);
    assert(getBagItems != null);
    return deleteFromBag(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addToBag(AddToBag value),
    Result deleteFromBag(DeleteFromBag value),
    Result getBagItems(GetBagItems value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFromBag != null) {
      return deleteFromBag(this);
    }
    return orElse();
  }
}

abstract class DeleteFromBag implements BagEvent {
  const factory DeleteFromBag(BagItemModel bagItem) = _$DeleteFromBag;

  BagItemModel get bagItem;
  $DeleteFromBagCopyWith<DeleteFromBag> get copyWith;
}

abstract class $GetBagItemsCopyWith<$Res> {
  factory $GetBagItemsCopyWith(
          GetBagItems value, $Res Function(GetBagItems) then) =
      _$GetBagItemsCopyWithImpl<$Res>;
}

class _$GetBagItemsCopyWithImpl<$Res> extends _$BagEventCopyWithImpl<$Res>
    implements $GetBagItemsCopyWith<$Res> {
  _$GetBagItemsCopyWithImpl(
      GetBagItems _value, $Res Function(GetBagItems) _then)
      : super(_value, (v) => _then(v as GetBagItems));

  @override
  GetBagItems get _value => super._value as GetBagItems;
}

class _$GetBagItems implements GetBagItems {
  const _$GetBagItems();

  @override
  String toString() {
    return 'BagEvent.getBagItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetBagItems);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addToBag(BagItemModel bagItem),
    @required Result deleteFromBag(BagItemModel bagItem),
    @required Result getBagItems(),
  }) {
    assert(addToBag != null);
    assert(deleteFromBag != null);
    assert(getBagItems != null);
    return getBagItems();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addToBag(BagItemModel bagItem),
    Result deleteFromBag(BagItemModel bagItem),
    Result getBagItems(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getBagItems != null) {
      return getBagItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addToBag(AddToBag value),
    @required Result deleteFromBag(DeleteFromBag value),
    @required Result getBagItems(GetBagItems value),
  }) {
    assert(addToBag != null);
    assert(deleteFromBag != null);
    assert(getBagItems != null);
    return getBagItems(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addToBag(AddToBag value),
    Result deleteFromBag(DeleteFromBag value),
    Result getBagItems(GetBagItems value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getBagItems != null) {
      return getBagItems(this);
    }
    return orElse();
  }
}

abstract class GetBagItems implements BagEvent {
  const factory GetBagItems() = _$GetBagItems;
}
