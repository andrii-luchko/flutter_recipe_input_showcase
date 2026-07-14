// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manual_ingredients_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ManualIngredientsState {

 Map<int, IngredientDraft> get draftsById; List<DetectedIngredient>? get convertedIngredient; bool get isSubmitting; String? get error; bool get isValidating; String? get validationError; bool get submitSucceeded;
/// Create a copy of ManualIngredientsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ManualIngredientsStateCopyWith<ManualIngredientsState> get copyWith => _$ManualIngredientsStateCopyWithImpl<ManualIngredientsState>(this as ManualIngredientsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManualIngredientsState&&const DeepCollectionEquality().equals(other.draftsById, draftsById)&&const DeepCollectionEquality().equals(other.convertedIngredient, convertedIngredient)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.error, error) || other.error == error)&&(identical(other.isValidating, isValidating) || other.isValidating == isValidating)&&(identical(other.validationError, validationError) || other.validationError == validationError)&&(identical(other.submitSucceeded, submitSucceeded) || other.submitSucceeded == submitSucceeded));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(draftsById),const DeepCollectionEquality().hash(convertedIngredient),isSubmitting,error,isValidating,validationError,submitSucceeded);

@override
String toString() {
  return 'ManualIngredientsState(draftsById: $draftsById, convertedIngredient: $convertedIngredient, isSubmitting: $isSubmitting, error: $error, isValidating: $isValidating, validationError: $validationError, submitSucceeded: $submitSucceeded)';
}


}

/// @nodoc
abstract mixin class $ManualIngredientsStateCopyWith<$Res>  {
  factory $ManualIngredientsStateCopyWith(ManualIngredientsState value, $Res Function(ManualIngredientsState) _then) = _$ManualIngredientsStateCopyWithImpl;
@useResult
$Res call({
 Map<int, IngredientDraft> draftsById, List<DetectedIngredient>? convertedIngredient, bool isSubmitting, String? error, bool isValidating, String? validationError, bool submitSucceeded
});




}
/// @nodoc
class _$ManualIngredientsStateCopyWithImpl<$Res>
    implements $ManualIngredientsStateCopyWith<$Res> {
  _$ManualIngredientsStateCopyWithImpl(this._self, this._then);

  final ManualIngredientsState _self;
  final $Res Function(ManualIngredientsState) _then;

/// Create a copy of ManualIngredientsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? draftsById = null,Object? convertedIngredient = freezed,Object? isSubmitting = null,Object? error = freezed,Object? isValidating = null,Object? validationError = freezed,Object? submitSucceeded = null,}) {
  return _then(_self.copyWith(
draftsById: null == draftsById ? _self.draftsById : draftsById // ignore: cast_nullable_to_non_nullable
as Map<int, IngredientDraft>,convertedIngredient: freezed == convertedIngredient ? _self.convertedIngredient : convertedIngredient // ignore: cast_nullable_to_non_nullable
as List<DetectedIngredient>?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isValidating: null == isValidating ? _self.isValidating : isValidating // ignore: cast_nullable_to_non_nullable
as bool,validationError: freezed == validationError ? _self.validationError : validationError // ignore: cast_nullable_to_non_nullable
as String?,submitSucceeded: null == submitSucceeded ? _self.submitSucceeded : submitSucceeded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ManualIngredientsState].
extension ManualIngredientsStatePatterns on ManualIngredientsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ManualIngredientsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ManualIngredientsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ManualIngredientsState value)  $default,){
final _that = this;
switch (_that) {
case _ManualIngredientsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ManualIngredientsState value)?  $default,){
final _that = this;
switch (_that) {
case _ManualIngredientsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<int, IngredientDraft> draftsById,  List<DetectedIngredient>? convertedIngredient,  bool isSubmitting,  String? error,  bool isValidating,  String? validationError,  bool submitSucceeded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ManualIngredientsState() when $default != null:
return $default(_that.draftsById,_that.convertedIngredient,_that.isSubmitting,_that.error,_that.isValidating,_that.validationError,_that.submitSucceeded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<int, IngredientDraft> draftsById,  List<DetectedIngredient>? convertedIngredient,  bool isSubmitting,  String? error,  bool isValidating,  String? validationError,  bool submitSucceeded)  $default,) {final _that = this;
switch (_that) {
case _ManualIngredientsState():
return $default(_that.draftsById,_that.convertedIngredient,_that.isSubmitting,_that.error,_that.isValidating,_that.validationError,_that.submitSucceeded);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<int, IngredientDraft> draftsById,  List<DetectedIngredient>? convertedIngredient,  bool isSubmitting,  String? error,  bool isValidating,  String? validationError,  bool submitSucceeded)?  $default,) {final _that = this;
switch (_that) {
case _ManualIngredientsState() when $default != null:
return $default(_that.draftsById,_that.convertedIngredient,_that.isSubmitting,_that.error,_that.isValidating,_that.validationError,_that.submitSucceeded);case _:
  return null;

}
}

}

/// @nodoc


class _ManualIngredientsState extends ManualIngredientsState {
  const _ManualIngredientsState({final  Map<int, IngredientDraft> draftsById = const <int, IngredientDraft>{}, final  List<DetectedIngredient>? convertedIngredient, this.isSubmitting = false, this.error, this.isValidating = false, this.validationError, this.submitSucceeded = false}): _draftsById = draftsById,_convertedIngredient = convertedIngredient,super._();
  

 final  Map<int, IngredientDraft> _draftsById;
@override@JsonKey() Map<int, IngredientDraft> get draftsById {
  if (_draftsById is EqualUnmodifiableMapView) return _draftsById;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_draftsById);
}

 final  List<DetectedIngredient>? _convertedIngredient;
@override List<DetectedIngredient>? get convertedIngredient {
  final value = _convertedIngredient;
  if (value == null) return null;
  if (_convertedIngredient is EqualUnmodifiableListView) return _convertedIngredient;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  bool isSubmitting;
@override final  String? error;
@override@JsonKey() final  bool isValidating;
@override final  String? validationError;
@override@JsonKey() final  bool submitSucceeded;

/// Create a copy of ManualIngredientsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ManualIngredientsStateCopyWith<_ManualIngredientsState> get copyWith => __$ManualIngredientsStateCopyWithImpl<_ManualIngredientsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ManualIngredientsState&&const DeepCollectionEquality().equals(other._draftsById, _draftsById)&&const DeepCollectionEquality().equals(other._convertedIngredient, _convertedIngredient)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.error, error) || other.error == error)&&(identical(other.isValidating, isValidating) || other.isValidating == isValidating)&&(identical(other.validationError, validationError) || other.validationError == validationError)&&(identical(other.submitSucceeded, submitSucceeded) || other.submitSucceeded == submitSucceeded));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_draftsById),const DeepCollectionEquality().hash(_convertedIngredient),isSubmitting,error,isValidating,validationError,submitSucceeded);

@override
String toString() {
  return 'ManualIngredientsState(draftsById: $draftsById, convertedIngredient: $convertedIngredient, isSubmitting: $isSubmitting, error: $error, isValidating: $isValidating, validationError: $validationError, submitSucceeded: $submitSucceeded)';
}


}

/// @nodoc
abstract mixin class _$ManualIngredientsStateCopyWith<$Res> implements $ManualIngredientsStateCopyWith<$Res> {
  factory _$ManualIngredientsStateCopyWith(_ManualIngredientsState value, $Res Function(_ManualIngredientsState) _then) = __$ManualIngredientsStateCopyWithImpl;
@override @useResult
$Res call({
 Map<int, IngredientDraft> draftsById, List<DetectedIngredient>? convertedIngredient, bool isSubmitting, String? error, bool isValidating, String? validationError, bool submitSucceeded
});




}
/// @nodoc
class __$ManualIngredientsStateCopyWithImpl<$Res>
    implements _$ManualIngredientsStateCopyWith<$Res> {
  __$ManualIngredientsStateCopyWithImpl(this._self, this._then);

  final _ManualIngredientsState _self;
  final $Res Function(_ManualIngredientsState) _then;

/// Create a copy of ManualIngredientsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? draftsById = null,Object? convertedIngredient = freezed,Object? isSubmitting = null,Object? error = freezed,Object? isValidating = null,Object? validationError = freezed,Object? submitSucceeded = null,}) {
  return _then(_ManualIngredientsState(
draftsById: null == draftsById ? _self._draftsById : draftsById // ignore: cast_nullable_to_non_nullable
as Map<int, IngredientDraft>,convertedIngredient: freezed == convertedIngredient ? _self._convertedIngredient : convertedIngredient // ignore: cast_nullable_to_non_nullable
as List<DetectedIngredient>?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isValidating: null == isValidating ? _self.isValidating : isValidating // ignore: cast_nullable_to_non_nullable
as bool,validationError: freezed == validationError ? _self.validationError : validationError // ignore: cast_nullable_to_non_nullable
as String?,submitSucceeded: null == submitSucceeded ? _self.submitSucceeded : submitSucceeded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
