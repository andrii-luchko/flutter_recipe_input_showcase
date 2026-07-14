// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginatedResponse {

 List<DishDto> get dishes;// ignore: always_put_required_named_parameters_first
 MetaDto get meta;
/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<PaginatedResponse> get copyWith => _$PaginatedResponseCopyWithImpl<PaginatedResponse>(this as PaginatedResponse, _$identity);

  /// Serializes this PaginatedResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedResponse&&const DeepCollectionEquality().equals(other.dishes, dishes)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(dishes),meta);

@override
String toString() {
  return 'PaginatedResponse(dishes: $dishes, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $PaginatedResponseCopyWith<$Res>  {
  factory $PaginatedResponseCopyWith(PaginatedResponse value, $Res Function(PaginatedResponse) _then) = _$PaginatedResponseCopyWithImpl;
@useResult
$Res call({
 List<DishDto> dishes, MetaDto meta
});


$MetaDtoCopyWith<$Res> get meta;

}
/// @nodoc
class _$PaginatedResponseCopyWithImpl<$Res>
    implements $PaginatedResponseCopyWith<$Res> {
  _$PaginatedResponseCopyWithImpl(this._self, this._then);

  final PaginatedResponse _self;
  final $Res Function(PaginatedResponse) _then;

/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dishes = null,Object? meta = null,}) {
  return _then(_self.copyWith(
dishes: null == dishes ? _self.dishes : dishes // ignore: cast_nullable_to_non_nullable
as List<DishDto>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaDto,
  ));
}
/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaDtoCopyWith<$Res> get meta {
  
  return $MetaDtoCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaginatedResponse].
extension PaginatedResponsePatterns on PaginatedResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedResponse value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedResponse():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DishDto> dishes,  MetaDto meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedResponse() when $default != null:
return $default(_that.dishes,_that.meta);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DishDto> dishes,  MetaDto meta)  $default,) {final _that = this;
switch (_that) {
case _PaginatedResponse():
return $default(_that.dishes,_that.meta);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DishDto> dishes,  MetaDto meta)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedResponse() when $default != null:
return $default(_that.dishes,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginatedResponse implements PaginatedResponse {
  const _PaginatedResponse({final  List<DishDto> dishes = const [], required this.meta}): _dishes = dishes;
  factory _PaginatedResponse.fromJson(Map<String, dynamic> json) => _$PaginatedResponseFromJson(json);

 final  List<DishDto> _dishes;
@override@JsonKey() List<DishDto> get dishes {
  if (_dishes is EqualUnmodifiableListView) return _dishes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dishes);
}

// ignore: always_put_required_named_parameters_first
@override final  MetaDto meta;

/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedResponseCopyWith<_PaginatedResponse> get copyWith => __$PaginatedResponseCopyWithImpl<_PaginatedResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginatedResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedResponse&&const DeepCollectionEquality().equals(other._dishes, _dishes)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_dishes),meta);

@override
String toString() {
  return 'PaginatedResponse(dishes: $dishes, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$PaginatedResponseCopyWith<$Res> implements $PaginatedResponseCopyWith<$Res> {
  factory _$PaginatedResponseCopyWith(_PaginatedResponse value, $Res Function(_PaginatedResponse) _then) = __$PaginatedResponseCopyWithImpl;
@override @useResult
$Res call({
 List<DishDto> dishes, MetaDto meta
});


@override $MetaDtoCopyWith<$Res> get meta;

}
/// @nodoc
class __$PaginatedResponseCopyWithImpl<$Res>
    implements _$PaginatedResponseCopyWith<$Res> {
  __$PaginatedResponseCopyWithImpl(this._self, this._then);

  final _PaginatedResponse _self;
  final $Res Function(_PaginatedResponse) _then;

/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dishes = null,Object? meta = null,}) {
  return _then(_PaginatedResponse(
dishes: null == dishes ? _self._dishes : dishes // ignore: cast_nullable_to_non_nullable
as List<DishDto>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaDto,
  ));
}

/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaDtoCopyWith<$Res> get meta {
  
  return $MetaDtoCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$MetaDto {

@JsonKey(fromJson: _parseSafeInt) int get totalItems;@JsonKey(fromJson: _parseSafeInt) int get itemsPerPage;@JsonKey(fromJson: _parseSafeInt) int get currentPage;@JsonKey(fromJson: _parseSafeInt) int get totalPages;
/// Create a copy of MetaDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaDtoCopyWith<MetaDto> get copyWith => _$MetaDtoCopyWithImpl<MetaDto>(this as MetaDto, _$identity);

  /// Serializes this MetaDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetaDto&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalItems,itemsPerPage,currentPage,totalPages);

@override
String toString() {
  return 'MetaDto(totalItems: $totalItems, itemsPerPage: $itemsPerPage, currentPage: $currentPage, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $MetaDtoCopyWith<$Res>  {
  factory $MetaDtoCopyWith(MetaDto value, $Res Function(MetaDto) _then) = _$MetaDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: _parseSafeInt) int totalItems,@JsonKey(fromJson: _parseSafeInt) int itemsPerPage,@JsonKey(fromJson: _parseSafeInt) int currentPage,@JsonKey(fromJson: _parseSafeInt) int totalPages
});




}
/// @nodoc
class _$MetaDtoCopyWithImpl<$Res>
    implements $MetaDtoCopyWith<$Res> {
  _$MetaDtoCopyWithImpl(this._self, this._then);

  final MetaDto _self;
  final $Res Function(MetaDto) _then;

/// Create a copy of MetaDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalItems = null,Object? itemsPerPage = null,Object? currentPage = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MetaDto].
extension MetaDtoPatterns on MetaDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetaDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetaDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetaDto value)  $default,){
final _that = this;
switch (_that) {
case _MetaDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetaDto value)?  $default,){
final _that = this;
switch (_that) {
case _MetaDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _parseSafeInt)  int totalItems, @JsonKey(fromJson: _parseSafeInt)  int itemsPerPage, @JsonKey(fromJson: _parseSafeInt)  int currentPage, @JsonKey(fromJson: _parseSafeInt)  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetaDto() when $default != null:
return $default(_that.totalItems,_that.itemsPerPage,_that.currentPage,_that.totalPages);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _parseSafeInt)  int totalItems, @JsonKey(fromJson: _parseSafeInt)  int itemsPerPage, @JsonKey(fromJson: _parseSafeInt)  int currentPage, @JsonKey(fromJson: _parseSafeInt)  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _MetaDto():
return $default(_that.totalItems,_that.itemsPerPage,_that.currentPage,_that.totalPages);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: _parseSafeInt)  int totalItems, @JsonKey(fromJson: _parseSafeInt)  int itemsPerPage, @JsonKey(fromJson: _parseSafeInt)  int currentPage, @JsonKey(fromJson: _parseSafeInt)  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _MetaDto() when $default != null:
return $default(_that.totalItems,_that.itemsPerPage,_that.currentPage,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MetaDto implements MetaDto {
  const _MetaDto({@JsonKey(fromJson: _parseSafeInt) required this.totalItems, @JsonKey(fromJson: _parseSafeInt) required this.itemsPerPage, @JsonKey(fromJson: _parseSafeInt) required this.currentPage, @JsonKey(fromJson: _parseSafeInt) required this.totalPages});
  factory _MetaDto.fromJson(Map<String, dynamic> json) => _$MetaDtoFromJson(json);

@override@JsonKey(fromJson: _parseSafeInt) final  int totalItems;
@override@JsonKey(fromJson: _parseSafeInt) final  int itemsPerPage;
@override@JsonKey(fromJson: _parseSafeInt) final  int currentPage;
@override@JsonKey(fromJson: _parseSafeInt) final  int totalPages;

/// Create a copy of MetaDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaDtoCopyWith<_MetaDto> get copyWith => __$MetaDtoCopyWithImpl<_MetaDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetaDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetaDto&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalItems,itemsPerPage,currentPage,totalPages);

@override
String toString() {
  return 'MetaDto(totalItems: $totalItems, itemsPerPage: $itemsPerPage, currentPage: $currentPage, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$MetaDtoCopyWith<$Res> implements $MetaDtoCopyWith<$Res> {
  factory _$MetaDtoCopyWith(_MetaDto value, $Res Function(_MetaDto) _then) = __$MetaDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: _parseSafeInt) int totalItems,@JsonKey(fromJson: _parseSafeInt) int itemsPerPage,@JsonKey(fromJson: _parseSafeInt) int currentPage,@JsonKey(fromJson: _parseSafeInt) int totalPages
});




}
/// @nodoc
class __$MetaDtoCopyWithImpl<$Res>
    implements _$MetaDtoCopyWith<$Res> {
  __$MetaDtoCopyWithImpl(this._self, this._then);

  final _MetaDto _self;
  final $Res Function(_MetaDto) _then;

/// Create a copy of MetaDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalItems = null,Object? itemsPerPage = null,Object? currentPage = null,Object? totalPages = null,}) {
  return _then(_MetaDto(
totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
