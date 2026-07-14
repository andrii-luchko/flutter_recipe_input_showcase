// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detected_ingredient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DetectedIngredient {

 String get name; double get quantity; IngredientUnit get unit; double get confidence; bool get isNew; String? get imageUrl;
/// Create a copy of DetectedIngredient
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetectedIngredientCopyWith<DetectedIngredient> get copyWith => _$DetectedIngredientCopyWithImpl<DetectedIngredient>(this as DetectedIngredient, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetectedIngredient&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.isNew, isNew) || other.isNew == isNew)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,name,quantity,unit,confidence,isNew,imageUrl);

@override
String toString() {
  return 'DetectedIngredient(name: $name, quantity: $quantity, unit: $unit, confidence: $confidence, isNew: $isNew, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $DetectedIngredientCopyWith<$Res>  {
  factory $DetectedIngredientCopyWith(DetectedIngredient value, $Res Function(DetectedIngredient) _then) = _$DetectedIngredientCopyWithImpl;
@useResult
$Res call({
 String name, double quantity, IngredientUnit unit, double confidence, bool isNew, String? imageUrl
});




}
/// @nodoc
class _$DetectedIngredientCopyWithImpl<$Res>
    implements $DetectedIngredientCopyWith<$Res> {
  _$DetectedIngredientCopyWithImpl(this._self, this._then);

  final DetectedIngredient _self;
  final $Res Function(DetectedIngredient) _then;

/// Create a copy of DetectedIngredient
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? quantity = null,Object? unit = null,Object? confidence = null,Object? isNew = null,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as IngredientUnit,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,isNew: null == isNew ? _self.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DetectedIngredient].
extension DetectedIngredientPatterns on DetectedIngredient {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DetectedIngredient value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetectedIngredient() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DetectedIngredient value)  $default,){
final _that = this;
switch (_that) {
case _DetectedIngredient():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DetectedIngredient value)?  $default,){
final _that = this;
switch (_that) {
case _DetectedIngredient() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  double quantity,  IngredientUnit unit,  double confidence,  bool isNew,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetectedIngredient() when $default != null:
return $default(_that.name,_that.quantity,_that.unit,_that.confidence,_that.isNew,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  double quantity,  IngredientUnit unit,  double confidence,  bool isNew,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _DetectedIngredient():
return $default(_that.name,_that.quantity,_that.unit,_that.confidence,_that.isNew,_that.imageUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  double quantity,  IngredientUnit unit,  double confidence,  bool isNew,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _DetectedIngredient() when $default != null:
return $default(_that.name,_that.quantity,_that.unit,_that.confidence,_that.isNew,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _DetectedIngredient implements DetectedIngredient {
  const _DetectedIngredient({this.name = '', this.quantity = 0, this.unit = IngredientUnit.g, this.confidence = 1.0, this.isNew = false, this.imageUrl});
  

@override@JsonKey() final  String name;
@override@JsonKey() final  double quantity;
@override@JsonKey() final  IngredientUnit unit;
@override@JsonKey() final  double confidence;
@override@JsonKey() final  bool isNew;
@override final  String? imageUrl;

/// Create a copy of DetectedIngredient
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetectedIngredientCopyWith<_DetectedIngredient> get copyWith => __$DetectedIngredientCopyWithImpl<_DetectedIngredient>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetectedIngredient&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.isNew, isNew) || other.isNew == isNew)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,name,quantity,unit,confidence,isNew,imageUrl);

@override
String toString() {
  return 'DetectedIngredient(name: $name, quantity: $quantity, unit: $unit, confidence: $confidence, isNew: $isNew, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$DetectedIngredientCopyWith<$Res> implements $DetectedIngredientCopyWith<$Res> {
  factory _$DetectedIngredientCopyWith(_DetectedIngredient value, $Res Function(_DetectedIngredient) _then) = __$DetectedIngredientCopyWithImpl;
@override @useResult
$Res call({
 String name, double quantity, IngredientUnit unit, double confidence, bool isNew, String? imageUrl
});




}
/// @nodoc
class __$DetectedIngredientCopyWithImpl<$Res>
    implements _$DetectedIngredientCopyWith<$Res> {
  __$DetectedIngredientCopyWithImpl(this._self, this._then);

  final _DetectedIngredient _self;
  final $Res Function(_DetectedIngredient) _then;

/// Create a copy of DetectedIngredient
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? quantity = null,Object? unit = null,Object? confidence = null,Object? isNew = null,Object? imageUrl = freezed,}) {
  return _then(_DetectedIngredient(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as IngredientUnit,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,isNew: null == isNew ? _self.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
