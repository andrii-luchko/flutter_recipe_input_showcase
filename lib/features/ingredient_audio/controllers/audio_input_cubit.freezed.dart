// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_input_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AudioInputState {

 MicrophoneControlsState get controlsState; String? get error; VoicePermissionIssue? get permissionIssue; bool get isProcessing; List<DetectedIngredient>? get extractedIngredients; Duration get duration;
/// Create a copy of AudioInputState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AudioInputStateCopyWith<AudioInputState> get copyWith => _$AudioInputStateCopyWithImpl<AudioInputState>(this as AudioInputState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AudioInputState&&(identical(other.controlsState, controlsState) || other.controlsState == controlsState)&&(identical(other.error, error) || other.error == error)&&(identical(other.permissionIssue, permissionIssue) || other.permissionIssue == permissionIssue)&&(identical(other.isProcessing, isProcessing) || other.isProcessing == isProcessing)&&const DeepCollectionEquality().equals(other.extractedIngredients, extractedIngredients)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,controlsState,error,permissionIssue,isProcessing,const DeepCollectionEquality().hash(extractedIngredients),duration);

@override
String toString() {
  return 'AudioInputState(controlsState: $controlsState, error: $error, permissionIssue: $permissionIssue, isProcessing: $isProcessing, extractedIngredients: $extractedIngredients, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $AudioInputStateCopyWith<$Res>  {
  factory $AudioInputStateCopyWith(AudioInputState value, $Res Function(AudioInputState) _then) = _$AudioInputStateCopyWithImpl;
@useResult
$Res call({
 MicrophoneControlsState controlsState, String? error, VoicePermissionIssue? permissionIssue, bool isProcessing, List<DetectedIngredient>? extractedIngredients, Duration duration
});




}
/// @nodoc
class _$AudioInputStateCopyWithImpl<$Res>
    implements $AudioInputStateCopyWith<$Res> {
  _$AudioInputStateCopyWithImpl(this._self, this._then);

  final AudioInputState _self;
  final $Res Function(AudioInputState) _then;

/// Create a copy of AudioInputState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? controlsState = null,Object? error = freezed,Object? permissionIssue = freezed,Object? isProcessing = null,Object? extractedIngredients = freezed,Object? duration = null,}) {
  return _then(_self.copyWith(
controlsState: null == controlsState ? _self.controlsState : controlsState // ignore: cast_nullable_to_non_nullable
as MicrophoneControlsState,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,permissionIssue: freezed == permissionIssue ? _self.permissionIssue : permissionIssue // ignore: cast_nullable_to_non_nullable
as VoicePermissionIssue?,isProcessing: null == isProcessing ? _self.isProcessing : isProcessing // ignore: cast_nullable_to_non_nullable
as bool,extractedIngredients: freezed == extractedIngredients ? _self.extractedIngredients : extractedIngredients // ignore: cast_nullable_to_non_nullable
as List<DetectedIngredient>?,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}

}


/// Adds pattern-matching-related methods to [AudioInputState].
extension AudioInputStatePatterns on AudioInputState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AudioInputState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AudioInputState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AudioInputState value)  $default,){
final _that = this;
switch (_that) {
case _AudioInputState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AudioInputState value)?  $default,){
final _that = this;
switch (_that) {
case _AudioInputState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MicrophoneControlsState controlsState,  String? error,  VoicePermissionIssue? permissionIssue,  bool isProcessing,  List<DetectedIngredient>? extractedIngredients,  Duration duration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AudioInputState() when $default != null:
return $default(_that.controlsState,_that.error,_that.permissionIssue,_that.isProcessing,_that.extractedIngredients,_that.duration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MicrophoneControlsState controlsState,  String? error,  VoicePermissionIssue? permissionIssue,  bool isProcessing,  List<DetectedIngredient>? extractedIngredients,  Duration duration)  $default,) {final _that = this;
switch (_that) {
case _AudioInputState():
return $default(_that.controlsState,_that.error,_that.permissionIssue,_that.isProcessing,_that.extractedIngredients,_that.duration);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MicrophoneControlsState controlsState,  String? error,  VoicePermissionIssue? permissionIssue,  bool isProcessing,  List<DetectedIngredient>? extractedIngredients,  Duration duration)?  $default,) {final _that = this;
switch (_that) {
case _AudioInputState() when $default != null:
return $default(_that.controlsState,_that.error,_that.permissionIssue,_that.isProcessing,_that.extractedIngredients,_that.duration);case _:
  return null;

}
}

}

/// @nodoc


class _AudioInputState extends AudioInputState {
  const _AudioInputState({this.controlsState = MicrophoneControlsState.initial, this.error, this.permissionIssue, this.isProcessing = false, final  List<DetectedIngredient>? extractedIngredients, this.duration = Duration.zero}): _extractedIngredients = extractedIngredients,super._();
  

@override@JsonKey() final  MicrophoneControlsState controlsState;
@override final  String? error;
@override final  VoicePermissionIssue? permissionIssue;
@override@JsonKey() final  bool isProcessing;
 final  List<DetectedIngredient>? _extractedIngredients;
@override List<DetectedIngredient>? get extractedIngredients {
  final value = _extractedIngredients;
  if (value == null) return null;
  if (_extractedIngredients is EqualUnmodifiableListView) return _extractedIngredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  Duration duration;

/// Create a copy of AudioInputState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AudioInputStateCopyWith<_AudioInputState> get copyWith => __$AudioInputStateCopyWithImpl<_AudioInputState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioInputState&&(identical(other.controlsState, controlsState) || other.controlsState == controlsState)&&(identical(other.error, error) || other.error == error)&&(identical(other.permissionIssue, permissionIssue) || other.permissionIssue == permissionIssue)&&(identical(other.isProcessing, isProcessing) || other.isProcessing == isProcessing)&&const DeepCollectionEquality().equals(other._extractedIngredients, _extractedIngredients)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,controlsState,error,permissionIssue,isProcessing,const DeepCollectionEquality().hash(_extractedIngredients),duration);

@override
String toString() {
  return 'AudioInputState(controlsState: $controlsState, error: $error, permissionIssue: $permissionIssue, isProcessing: $isProcessing, extractedIngredients: $extractedIngredients, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$AudioInputStateCopyWith<$Res> implements $AudioInputStateCopyWith<$Res> {
  factory _$AudioInputStateCopyWith(_AudioInputState value, $Res Function(_AudioInputState) _then) = __$AudioInputStateCopyWithImpl;
@override @useResult
$Res call({
 MicrophoneControlsState controlsState, String? error, VoicePermissionIssue? permissionIssue, bool isProcessing, List<DetectedIngredient>? extractedIngredients, Duration duration
});




}
/// @nodoc
class __$AudioInputStateCopyWithImpl<$Res>
    implements _$AudioInputStateCopyWith<$Res> {
  __$AudioInputStateCopyWithImpl(this._self, this._then);

  final _AudioInputState _self;
  final $Res Function(_AudioInputState) _then;

/// Create a copy of AudioInputState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? controlsState = null,Object? error = freezed,Object? permissionIssue = freezed,Object? isProcessing = null,Object? extractedIngredients = freezed,Object? duration = null,}) {
  return _then(_AudioInputState(
controlsState: null == controlsState ? _self.controlsState : controlsState // ignore: cast_nullable_to_non_nullable
as MicrophoneControlsState,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,permissionIssue: freezed == permissionIssue ? _self.permissionIssue : permissionIssue // ignore: cast_nullable_to_non_nullable
as VoicePermissionIssue?,isProcessing: null == isProcessing ? _self.isProcessing : isProcessing // ignore: cast_nullable_to_non_nullable
as bool,extractedIngredients: freezed == extractedIngredients ? _self._extractedIngredients : extractedIngredients // ignore: cast_nullable_to_non_nullable
as List<DetectedIngredient>?,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}

// dart format on
