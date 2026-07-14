// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detected_ingredient_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetectedIngredientDto {

 String get name; double get count;@JsonKey(name: 'unit_id') int get unitId; double get confidence;@JsonKey(name: 'image_url') String? get imageUrl;
/// Create a copy of DetectedIngredientDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetectedIngredientDtoCopyWith<DetectedIngredientDto> get copyWith => _$DetectedIngredientDtoCopyWithImpl<DetectedIngredientDto>(this as DetectedIngredientDto, _$identity);

  /// Serializes this DetectedIngredientDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetectedIngredientDto&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,count,unitId,confidence,imageUrl);

@override
String toString() {
  return 'DetectedIngredientDto(name: $name, count: $count, unitId: $unitId, confidence: $confidence, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $DetectedIngredientDtoCopyWith<$Res>  {
  factory $DetectedIngredientDtoCopyWith(DetectedIngredientDto value, $Res Function(DetectedIngredientDto) _then) = _$DetectedIngredientDtoCopyWithImpl;
@useResult
$Res call({
 String name, double count,@JsonKey(name: 'unit_id') int unitId, double confidence,@JsonKey(name: 'image_url') String? imageUrl
});




}
/// @nodoc
class _$DetectedIngredientDtoCopyWithImpl<$Res>
    implements $DetectedIngredientDtoCopyWith<$Res> {
  _$DetectedIngredientDtoCopyWithImpl(this._self, this._then);

  final DetectedIngredientDto _self;
  final $Res Function(DetectedIngredientDto) _then;

/// Create a copy of DetectedIngredientDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? count = null,Object? unitId = null,Object? confidence = null,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as double,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as int,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DetectedIngredientDto].
extension DetectedIngredientDtoPatterns on DetectedIngredientDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DetectedIngredientDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetectedIngredientDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DetectedIngredientDto value)  $default,){
final _that = this;
switch (_that) {
case _DetectedIngredientDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DetectedIngredientDto value)?  $default,){
final _that = this;
switch (_that) {
case _DetectedIngredientDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  double count, @JsonKey(name: 'unit_id')  int unitId,  double confidence, @JsonKey(name: 'image_url')  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetectedIngredientDto() when $default != null:
return $default(_that.name,_that.count,_that.unitId,_that.confidence,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  double count, @JsonKey(name: 'unit_id')  int unitId,  double confidence, @JsonKey(name: 'image_url')  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _DetectedIngredientDto():
return $default(_that.name,_that.count,_that.unitId,_that.confidence,_that.imageUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  double count, @JsonKey(name: 'unit_id')  int unitId,  double confidence, @JsonKey(name: 'image_url')  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _DetectedIngredientDto() when $default != null:
return $default(_that.name,_that.count,_that.unitId,_that.confidence,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DetectedIngredientDto extends DetectedIngredientDto {
  const _DetectedIngredientDto({required this.name, required this.count, @JsonKey(name: 'unit_id') required this.unitId, this.confidence = 1.0, @JsonKey(name: 'image_url') this.imageUrl}): super._();
  factory _DetectedIngredientDto.fromJson(Map<String, dynamic> json) => _$DetectedIngredientDtoFromJson(json);

@override final  String name;
@override final  double count;
@override@JsonKey(name: 'unit_id') final  int unitId;
@override@JsonKey() final  double confidence;
@override@JsonKey(name: 'image_url') final  String? imageUrl;

/// Create a copy of DetectedIngredientDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetectedIngredientDtoCopyWith<_DetectedIngredientDto> get copyWith => __$DetectedIngredientDtoCopyWithImpl<_DetectedIngredientDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DetectedIngredientDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetectedIngredientDto&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,count,unitId,confidence,imageUrl);

@override
String toString() {
  return 'DetectedIngredientDto(name: $name, count: $count, unitId: $unitId, confidence: $confidence, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$DetectedIngredientDtoCopyWith<$Res> implements $DetectedIngredientDtoCopyWith<$Res> {
  factory _$DetectedIngredientDtoCopyWith(_DetectedIngredientDto value, $Res Function(_DetectedIngredientDto) _then) = __$DetectedIngredientDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, double count,@JsonKey(name: 'unit_id') int unitId, double confidence,@JsonKey(name: 'image_url') String? imageUrl
});




}
/// @nodoc
class __$DetectedIngredientDtoCopyWithImpl<$Res>
    implements _$DetectedIngredientDtoCopyWith<$Res> {
  __$DetectedIngredientDtoCopyWithImpl(this._self, this._then);

  final _DetectedIngredientDto _self;
  final $Res Function(_DetectedIngredientDto) _then;

/// Create a copy of DetectedIngredientDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? count = null,Object? unitId = null,Object? confidence = null,Object? imageUrl = freezed,}) {
  return _then(_DetectedIngredientDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as double,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as int,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
