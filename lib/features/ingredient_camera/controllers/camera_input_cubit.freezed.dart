// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_input_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CameraInputState {

 String? get localImagePath; bool get isSubmitting; String? get error; List<DetectedIngredient>? get detectedIngredients;
/// Create a copy of CameraInputState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraInputStateCopyWith<CameraInputState> get copyWith => _$CameraInputStateCopyWithImpl<CameraInputState>(this as CameraInputState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraInputState&&(identical(other.localImagePath, localImagePath) || other.localImagePath == localImagePath)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.detectedIngredients, detectedIngredients));
}


@override
int get hashCode => Object.hash(runtimeType,localImagePath,isSubmitting,error,const DeepCollectionEquality().hash(detectedIngredients));

@override
String toString() {
  return 'CameraInputState(localImagePath: $localImagePath, isSubmitting: $isSubmitting, error: $error, detectedIngredients: $detectedIngredients)';
}


}

/// @nodoc
abstract mixin class $CameraInputStateCopyWith<$Res>  {
  factory $CameraInputStateCopyWith(CameraInputState value, $Res Function(CameraInputState) _then) = _$CameraInputStateCopyWithImpl;
@useResult
$Res call({
 String? localImagePath, bool isSubmitting, String? error, List<DetectedIngredient>? detectedIngredients
});




}
/// @nodoc
class _$CameraInputStateCopyWithImpl<$Res>
    implements $CameraInputStateCopyWith<$Res> {
  _$CameraInputStateCopyWithImpl(this._self, this._then);

  final CameraInputState _self;
  final $Res Function(CameraInputState) _then;

/// Create a copy of CameraInputState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? localImagePath = freezed,Object? isSubmitting = null,Object? error = freezed,Object? detectedIngredients = freezed,}) {
  return _then(_self.copyWith(
localImagePath: freezed == localImagePath ? _self.localImagePath : localImagePath // ignore: cast_nullable_to_non_nullable
as String?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,detectedIngredients: freezed == detectedIngredients ? _self.detectedIngredients : detectedIngredients // ignore: cast_nullable_to_non_nullable
as List<DetectedIngredient>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CameraInputState].
extension CameraInputStatePatterns on CameraInputState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CameraInputState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CameraInputState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CameraInputState value)  $default,){
final _that = this;
switch (_that) {
case _CameraInputState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CameraInputState value)?  $default,){
final _that = this;
switch (_that) {
case _CameraInputState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? localImagePath,  bool isSubmitting,  String? error,  List<DetectedIngredient>? detectedIngredients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CameraInputState() when $default != null:
return $default(_that.localImagePath,_that.isSubmitting,_that.error,_that.detectedIngredients);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? localImagePath,  bool isSubmitting,  String? error,  List<DetectedIngredient>? detectedIngredients)  $default,) {final _that = this;
switch (_that) {
case _CameraInputState():
return $default(_that.localImagePath,_that.isSubmitting,_that.error,_that.detectedIngredients);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? localImagePath,  bool isSubmitting,  String? error,  List<DetectedIngredient>? detectedIngredients)?  $default,) {final _that = this;
switch (_that) {
case _CameraInputState() when $default != null:
return $default(_that.localImagePath,_that.isSubmitting,_that.error,_that.detectedIngredients);case _:
  return null;

}
}

}

/// @nodoc


class _CameraInputState extends CameraInputState {
  const _CameraInputState({this.localImagePath, this.isSubmitting = false, this.error, final  List<DetectedIngredient>? detectedIngredients}): _detectedIngredients = detectedIngredients,super._();
  

@override final  String? localImagePath;
@override@JsonKey() final  bool isSubmitting;
@override final  String? error;
 final  List<DetectedIngredient>? _detectedIngredients;
@override List<DetectedIngredient>? get detectedIngredients {
  final value = _detectedIngredients;
  if (value == null) return null;
  if (_detectedIngredients is EqualUnmodifiableListView) return _detectedIngredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CameraInputState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CameraInputStateCopyWith<_CameraInputState> get copyWith => __$CameraInputStateCopyWithImpl<_CameraInputState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CameraInputState&&(identical(other.localImagePath, localImagePath) || other.localImagePath == localImagePath)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._detectedIngredients, _detectedIngredients));
}


@override
int get hashCode => Object.hash(runtimeType,localImagePath,isSubmitting,error,const DeepCollectionEquality().hash(_detectedIngredients));

@override
String toString() {
  return 'CameraInputState(localImagePath: $localImagePath, isSubmitting: $isSubmitting, error: $error, detectedIngredients: $detectedIngredients)';
}


}

/// @nodoc
abstract mixin class _$CameraInputStateCopyWith<$Res> implements $CameraInputStateCopyWith<$Res> {
  factory _$CameraInputStateCopyWith(_CameraInputState value, $Res Function(_CameraInputState) _then) = __$CameraInputStateCopyWithImpl;
@override @useResult
$Res call({
 String? localImagePath, bool isSubmitting, String? error, List<DetectedIngredient>? detectedIngredients
});




}
/// @nodoc
class __$CameraInputStateCopyWithImpl<$Res>
    implements _$CameraInputStateCopyWith<$Res> {
  __$CameraInputStateCopyWithImpl(this._self, this._then);

  final _CameraInputState _self;
  final $Res Function(_CameraInputState) _then;

/// Create a copy of CameraInputState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? localImagePath = freezed,Object? isSubmitting = null,Object? error = freezed,Object? detectedIngredients = freezed,}) {
  return _then(_CameraInputState(
localImagePath: freezed == localImagePath ? _self.localImagePath : localImagePath // ignore: cast_nullable_to_non_nullable
as String?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,detectedIngredients: freezed == detectedIngredients ? _self._detectedIngredients : detectedIngredients // ignore: cast_nullable_to_non_nullable
as List<DetectedIngredient>?,
  ));
}


}

// dart format on
