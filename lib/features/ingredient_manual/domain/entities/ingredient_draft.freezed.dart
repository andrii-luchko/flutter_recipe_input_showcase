// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_draft.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IngredientDraft {

 String get name; String get quantityText; IngredientUnit get unit; double get confidence; bool get isNew; String? get imageUrl;
/// Create a copy of IngredientDraft
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientDraftCopyWith<IngredientDraft> get copyWith => _$IngredientDraftCopyWithImpl<IngredientDraft>(this as IngredientDraft, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientDraft&&(identical(other.name, name) || other.name == name)&&(identical(other.quantityText, quantityText) || other.quantityText == quantityText)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.isNew, isNew) || other.isNew == isNew)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,name,quantityText,unit,confidence,isNew,imageUrl);

@override
String toString() {
  return 'IngredientDraft(name: $name, quantityText: $quantityText, unit: $unit, confidence: $confidence, isNew: $isNew, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $IngredientDraftCopyWith<$Res>  {
  factory $IngredientDraftCopyWith(IngredientDraft value, $Res Function(IngredientDraft) _then) = _$IngredientDraftCopyWithImpl;
@useResult
$Res call({
 String name, String quantityText, IngredientUnit unit, double confidence, bool isNew, String? imageUrl
});




}
/// @nodoc
class _$IngredientDraftCopyWithImpl<$Res>
    implements $IngredientDraftCopyWith<$Res> {
  _$IngredientDraftCopyWithImpl(this._self, this._then);

  final IngredientDraft _self;
  final $Res Function(IngredientDraft) _then;

/// Create a copy of IngredientDraft
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? quantityText = null,Object? unit = null,Object? confidence = null,Object? isNew = null,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantityText: null == quantityText ? _self.quantityText : quantityText // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as IngredientUnit,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,isNew: null == isNew ? _self.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientDraft].
extension IngredientDraftPatterns on IngredientDraft {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientDraft value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientDraft() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientDraft value)  $default,){
final _that = this;
switch (_that) {
case _IngredientDraft():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientDraft value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientDraft() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String quantityText,  IngredientUnit unit,  double confidence,  bool isNew,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientDraft() when $default != null:
return $default(_that.name,_that.quantityText,_that.unit,_that.confidence,_that.isNew,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String quantityText,  IngredientUnit unit,  double confidence,  bool isNew,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _IngredientDraft():
return $default(_that.name,_that.quantityText,_that.unit,_that.confidence,_that.isNew,_that.imageUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String quantityText,  IngredientUnit unit,  double confidence,  bool isNew,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _IngredientDraft() when $default != null:
return $default(_that.name,_that.quantityText,_that.unit,_that.confidence,_that.isNew,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _IngredientDraft extends IngredientDraft {
  const _IngredientDraft({this.name = '', this.quantityText = '', this.unit = IngredientUnit.g, this.confidence = 1.0, this.isNew = false, this.imageUrl}): super._();
  

@override@JsonKey() final  String name;
@override@JsonKey() final  String quantityText;
@override@JsonKey() final  IngredientUnit unit;
@override@JsonKey() final  double confidence;
@override@JsonKey() final  bool isNew;
@override final  String? imageUrl;

/// Create a copy of IngredientDraft
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientDraftCopyWith<_IngredientDraft> get copyWith => __$IngredientDraftCopyWithImpl<_IngredientDraft>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientDraft&&(identical(other.name, name) || other.name == name)&&(identical(other.quantityText, quantityText) || other.quantityText == quantityText)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.isNew, isNew) || other.isNew == isNew)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,name,quantityText,unit,confidence,isNew,imageUrl);

@override
String toString() {
  return 'IngredientDraft(name: $name, quantityText: $quantityText, unit: $unit, confidence: $confidence, isNew: $isNew, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$IngredientDraftCopyWith<$Res> implements $IngredientDraftCopyWith<$Res> {
  factory _$IngredientDraftCopyWith(_IngredientDraft value, $Res Function(_IngredientDraft) _then) = __$IngredientDraftCopyWithImpl;
@override @useResult
$Res call({
 String name, String quantityText, IngredientUnit unit, double confidence, bool isNew, String? imageUrl
});




}
/// @nodoc
class __$IngredientDraftCopyWithImpl<$Res>
    implements _$IngredientDraftCopyWith<$Res> {
  __$IngredientDraftCopyWithImpl(this._self, this._then);

  final _IngredientDraft _self;
  final $Res Function(_IngredientDraft) _then;

/// Create a copy of IngredientDraft
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? quantityText = null,Object? unit = null,Object? confidence = null,Object? isNew = null,Object? imageUrl = freezed,}) {
  return _then(_IngredientDraft(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantityText: null == quantityText ? _self.quantityText : quantityText // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as IngredientUnit,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,isNew: null == isNew ? _self.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
