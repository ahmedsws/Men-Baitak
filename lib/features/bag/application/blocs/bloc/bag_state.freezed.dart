// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'bag_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BagStateTearOff {
  const _$BagStateTearOff();

  BagLoading bagLoading() {
    return const BagLoading();
  }

  BagItemsLoaded bagItemsLoaded(List<BagItemModel> bagItems) {
    return BagItemsLoaded(
      bagItems,
    );
  }

  BagItemAdded bagItemAdded(BagItemModel bagItem) {
    return BagItemAdded(
      bagItem,
    );
  }

  BagItemDeleted bagItemDeleted(BagItemModel bagItem) {
    return BagItemDeleted(
      bagItem,
    );
  }
}

// ignore: unused_element
const $BagState = _$BagStateTearOff();

mixin _$BagState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bagLoading(),
    @required Result bagItemsLoaded(List<BagItemModel> bagItems),
    @required Result bagItemAdded(BagItemModel bagItem),
    @required Result bagItemDeleted(BagItemModel bagItem),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bagLoading(),
    Result bagItemsLoaded(List<BagItemModel> bagItems),
    Result bagItemAdded(BagItemModel bagItem),
    Result bagItemDeleted(BagItemModel bagItem),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bagLoading(BagLoading value),
    @required Result bagItemsLoaded(BagItemsLoaded value),
    @required Result bagItemAdded(BagItemAdded value),
    @required Result bagItemDeleted(BagItemDeleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bagLoading(BagLoading value),
    Result bagItemsLoaded(BagItemsLoaded value),
    Result bagItemAdded(BagItemAdded value),
    Result bagItemDeleted(BagItemDeleted value),
    @required Result orElse(),
  });
}

abstract class $BagStateCopyWith<$Res> {
  factory $BagStateCopyWith(BagState value, $Res Function(BagState) then) =
      _$BagStateCopyWithImpl<$Res>;
}

class _$BagStateCopyWithImpl<$Res> implements $BagStateCopyWith<$Res> {
  _$BagStateCopyWithImpl(this._value, this._then);

  final BagState _value;
  // ignore: unused_field
  final $Res Function(BagState) _then;
}

abstract class $BagLoadingCopyWith<$Res> {
  factory $BagLoadingCopyWith(
          BagLoading value, $Res Function(BagLoading) then) =
      _$BagLoadingCopyWithImpl<$Res>;
}

class _$BagLoadingCopyWithImpl<$Res> extends _$BagStateCopyWithImpl<$Res>
    implements $BagLoadingCopyWith<$Res> {
  _$BagLoadingCopyWithImpl(BagLoading _value, $Res Function(BagLoading) _then)
      : super(_value, (v) => _then(v as BagLoading));

  @override
  BagLoading get _value => super._value as BagLoading;
}

class _$BagLoading implements BagLoading {
  const _$BagLoading();

  @override
  String toString() {
    return 'BagState.bagLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BagLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bagLoading(),
    @required Result bagItemsLoaded(List<BagItemModel> bagItems),
    @required Result bagItemAdded(BagItemModel bagItem),
    @required Result bagItemDeleted(BagItemModel bagItem),
  }) {
    assert(bagLoading != null);
    assert(bagItemsLoaded != null);
    assert(bagItemAdded != null);
    assert(bagItemDeleted != null);
    return bagLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bagLoading(),
    Result bagItemsLoaded(List<BagItemModel> bagItems),
    Result bagItemAdded(BagItemModel bagItem),
    Result bagItemDeleted(BagItemModel bagItem),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bagLoading != null) {
      return bagLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bagLoading(BagLoading value),
    @required Result bagItemsLoaded(BagItemsLoaded value),
    @required Result bagItemAdded(BagItemAdded value),
    @required Result bagItemDeleted(BagItemDeleted value),
  }) {
    assert(bagLoading != null);
    assert(bagItemsLoaded != null);
    assert(bagItemAdded != null);
    assert(bagItemDeleted != null);
    return bagLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bagLoading(BagLoading value),
    Result bagItemsLoaded(BagItemsLoaded value),
    Result bagItemAdded(BagItemAdded value),
    Result bagItemDeleted(BagItemDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bagLoading != null) {
      return bagLoading(this);
    }
    return orElse();
  }
}

abstract class BagLoading implements BagState {
  const factory BagLoading() = _$BagLoading;
}

abstract class $BagItemsLoadedCopyWith<$Res> {
  factory $BagItemsLoadedCopyWith(
          BagItemsLoaded value, $Res Function(BagItemsLoaded) then) =
      _$BagItemsLoadedCopyWithImpl<$Res>;
  $Res call({List<BagItemModel> bagItems});
}

class _$BagItemsLoadedCopyWithImpl<$Res> extends _$BagStateCopyWithImpl<$Res>
    implements $BagItemsLoadedCopyWith<$Res> {
  _$BagItemsLoadedCopyWithImpl(
      BagItemsLoaded _value, $Res Function(BagItemsLoaded) _then)
      : super(_value, (v) => _then(v as BagItemsLoaded));

  @override
  BagItemsLoaded get _value => super._value as BagItemsLoaded;

  @override
  $Res call({
    Object bagItems = freezed,
  }) {
    return _then(BagItemsLoaded(
      bagItems == freezed ? _value.bagItems : bagItems as List<BagItemModel>,
    ));
  }
}

class _$BagItemsLoaded implements BagItemsLoaded {
  const _$BagItemsLoaded(this.bagItems) : assert(bagItems != null);

  @override
  final List<BagItemModel> bagItems;

  @override
  String toString() {
    return 'BagState.bagItemsLoaded(bagItems: $bagItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BagItemsLoaded &&
            (identical(other.bagItems, bagItems) ||
                const DeepCollectionEquality()
                    .equals(other.bagItems, bagItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bagItems);

  @override
  $BagItemsLoadedCopyWith<BagItemsLoaded> get copyWith =>
      _$BagItemsLoadedCopyWithImpl<BagItemsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bagLoading(),
    @required Result bagItemsLoaded(List<BagItemModel> bagItems),
    @required Result bagItemAdded(BagItemModel bagItem),
    @required Result bagItemDeleted(BagItemModel bagItem),
  }) {
    assert(bagLoading != null);
    assert(bagItemsLoaded != null);
    assert(bagItemAdded != null);
    assert(bagItemDeleted != null);
    return bagItemsLoaded(bagItems);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bagLoading(),
    Result bagItemsLoaded(List<BagItemModel> bagItems),
    Result bagItemAdded(BagItemModel bagItem),
    Result bagItemDeleted(BagItemModel bagItem),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bagItemsLoaded != null) {
      return bagItemsLoaded(bagItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bagLoading(BagLoading value),
    @required Result bagItemsLoaded(BagItemsLoaded value),
    @required Result bagItemAdded(BagItemAdded value),
    @required Result bagItemDeleted(BagItemDeleted value),
  }) {
    assert(bagLoading != null);
    assert(bagItemsLoaded != null);
    assert(bagItemAdded != null);
    assert(bagItemDeleted != null);
    return bagItemsLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bagLoading(BagLoading value),
    Result bagItemsLoaded(BagItemsLoaded value),
    Result bagItemAdded(BagItemAdded value),
    Result bagItemDeleted(BagItemDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bagItemsLoaded != null) {
      return bagItemsLoaded(this);
    }
    return orElse();
  }
}

abstract class BagItemsLoaded implements BagState {
  const factory BagItemsLoaded(List<BagItemModel> bagItems) = _$BagItemsLoaded;

  List<BagItemModel> get bagItems;
  $BagItemsLoadedCopyWith<BagItemsLoaded> get copyWith;
}

abstract class $BagItemAddedCopyWith<$Res> {
  factory $BagItemAddedCopyWith(
          BagItemAdded value, $Res Function(BagItemAdded) then) =
      _$BagItemAddedCopyWithImpl<$Res>;
  $Res call({BagItemModel bagItem});
}

class _$BagItemAddedCopyWithImpl<$Res> extends _$BagStateCopyWithImpl<$Res>
    implements $BagItemAddedCopyWith<$Res> {
  _$BagItemAddedCopyWithImpl(
      BagItemAdded _value, $Res Function(BagItemAdded) _then)
      : super(_value, (v) => _then(v as BagItemAdded));

  @override
  BagItemAdded get _value => super._value as BagItemAdded;

  @override
  $Res call({
    Object bagItem = freezed,
  }) {
    return _then(BagItemAdded(
      bagItem == freezed ? _value.bagItem : bagItem as BagItemModel,
    ));
  }
}

class _$BagItemAdded implements BagItemAdded {
  const _$BagItemAdded(this.bagItem) : assert(bagItem != null);

  @override
  final BagItemModel bagItem;

  @override
  String toString() {
    return 'BagState.bagItemAdded(bagItem: $bagItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BagItemAdded &&
            (identical(other.bagItem, bagItem) ||
                const DeepCollectionEquality().equals(other.bagItem, bagItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bagItem);

  @override
  $BagItemAddedCopyWith<BagItemAdded> get copyWith =>
      _$BagItemAddedCopyWithImpl<BagItemAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bagLoading(),
    @required Result bagItemsLoaded(List<BagItemModel> bagItems),
    @required Result bagItemAdded(BagItemModel bagItem),
    @required Result bagItemDeleted(BagItemModel bagItem),
  }) {
    assert(bagLoading != null);
    assert(bagItemsLoaded != null);
    assert(bagItemAdded != null);
    assert(bagItemDeleted != null);
    return bagItemAdded(bagItem);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bagLoading(),
    Result bagItemsLoaded(List<BagItemModel> bagItems),
    Result bagItemAdded(BagItemModel bagItem),
    Result bagItemDeleted(BagItemModel bagItem),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bagItemAdded != null) {
      return bagItemAdded(bagItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bagLoading(BagLoading value),
    @required Result bagItemsLoaded(BagItemsLoaded value),
    @required Result bagItemAdded(BagItemAdded value),
    @required Result bagItemDeleted(BagItemDeleted value),
  }) {
    assert(bagLoading != null);
    assert(bagItemsLoaded != null);
    assert(bagItemAdded != null);
    assert(bagItemDeleted != null);
    return bagItemAdded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bagLoading(BagLoading value),
    Result bagItemsLoaded(BagItemsLoaded value),
    Result bagItemAdded(BagItemAdded value),
    Result bagItemDeleted(BagItemDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bagItemAdded != null) {
      return bagItemAdded(this);
    }
    return orElse();
  }
}

abstract class BagItemAdded implements BagState {
  const factory BagItemAdded(BagItemModel bagItem) = _$BagItemAdded;

  BagItemModel get bagItem;
  $BagItemAddedCopyWith<BagItemAdded> get copyWith;
}

abstract class $BagItemDeletedCopyWith<$Res> {
  factory $BagItemDeletedCopyWith(
          BagItemDeleted value, $Res Function(BagItemDeleted) then) =
      _$BagItemDeletedCopyWithImpl<$Res>;
  $Res call({BagItemModel bagItem});
}

class _$BagItemDeletedCopyWithImpl<$Res> extends _$BagStateCopyWithImpl<$Res>
    implements $BagItemDeletedCopyWith<$Res> {
  _$BagItemDeletedCopyWithImpl(
      BagItemDeleted _value, $Res Function(BagItemDeleted) _then)
      : super(_value, (v) => _then(v as BagItemDeleted));

  @override
  BagItemDeleted get _value => super._value as BagItemDeleted;

  @override
  $Res call({
    Object bagItem = freezed,
  }) {
    return _then(BagItemDeleted(
      bagItem == freezed ? _value.bagItem : bagItem as BagItemModel,
    ));
  }
}

class _$BagItemDeleted implements BagItemDeleted {
  const _$BagItemDeleted(this.bagItem) : assert(bagItem != null);

  @override
  final BagItemModel bagItem;

  @override
  String toString() {
    return 'BagState.bagItemDeleted(bagItem: $bagItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BagItemDeleted &&
            (identical(other.bagItem, bagItem) ||
                const DeepCollectionEquality().equals(other.bagItem, bagItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bagItem);

  @override
  $BagItemDeletedCopyWith<BagItemDeleted> get copyWith =>
      _$BagItemDeletedCopyWithImpl<BagItemDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bagLoading(),
    @required Result bagItemsLoaded(List<BagItemModel> bagItems),
    @required Result bagItemAdded(BagItemModel bagItem),
    @required Result bagItemDeleted(BagItemModel bagItem),
  }) {
    assert(bagLoading != null);
    assert(bagItemsLoaded != null);
    assert(bagItemAdded != null);
    assert(bagItemDeleted != null);
    return bagItemDeleted(bagItem);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bagLoading(),
    Result bagItemsLoaded(List<BagItemModel> bagItems),
    Result bagItemAdded(BagItemModel bagItem),
    Result bagItemDeleted(BagItemModel bagItem),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bagItemDeleted != null) {
      return bagItemDeleted(bagItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bagLoading(BagLoading value),
    @required Result bagItemsLoaded(BagItemsLoaded value),
    @required Result bagItemAdded(BagItemAdded value),
    @required Result bagItemDeleted(BagItemDeleted value),
  }) {
    assert(bagLoading != null);
    assert(bagItemsLoaded != null);
    assert(bagItemAdded != null);
    assert(bagItemDeleted != null);
    return bagItemDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bagLoading(BagLoading value),
    Result bagItemsLoaded(BagItemsLoaded value),
    Result bagItemAdded(BagItemAdded value),
    Result bagItemDeleted(BagItemDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bagItemDeleted != null) {
      return bagItemDeleted(this);
    }
    return orElse();
  }
}

abstract class BagItemDeleted implements BagState {
  const factory BagItemDeleted(BagItemModel bagItem) = _$BagItemDeleted;

  BagItemModel get bagItem;
  $BagItemDeletedCopyWith<BagItemDeleted> get copyWith;
}
