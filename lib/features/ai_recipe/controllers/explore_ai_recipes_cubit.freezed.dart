// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_ai_recipes_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExploreAiRecipesState {

 List<DetectedIngredient> get ingredients; PagingState get pagingState;
/// Create a copy of ExploreAiRecipesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExploreAiRecipesStateCopyWith<ExploreAiRecipesState> get copyWith => _$ExploreAiRecipesStateCopyWithImpl<ExploreAiRecipesState>(this as ExploreAiRecipesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExploreAiRecipesState&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(ingredients),pagingState);

@override
String toString() {
  return 'ExploreAiRecipesState(ingredients: $ingredients, pagingState: $pagingState)';
}


}

/// @nodoc
abstract mixin class $ExploreAiRecipesStateCopyWith<$Res>  {
  factory $ExploreAiRecipesStateCopyWith(ExploreAiRecipesState value, $Res Function(ExploreAiRecipesState) _then) = _$ExploreAiRecipesStateCopyWithImpl;
@useResult
$Res call({
 List<DetectedIngredient> ingredients, PagingState pagingState
});


$PagingStateCopyWith<$Res> get pagingState;

}
/// @nodoc
class _$ExploreAiRecipesStateCopyWithImpl<$Res>
    implements $ExploreAiRecipesStateCopyWith<$Res> {
  _$ExploreAiRecipesStateCopyWithImpl(this._self, this._then);

  final ExploreAiRecipesState _self;
  final $Res Function(ExploreAiRecipesState) _then;

/// Create a copy of ExploreAiRecipesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ingredients = null,Object? pagingState = null,}) {
  return _then(_self.copyWith(
ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<DetectedIngredient>,pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState,
  ));
}
/// Create a copy of ExploreAiRecipesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PagingStateCopyWith<$Res> get pagingState {
  
  return $PagingStateCopyWith<$Res>(_self.pagingState, (value) {
    return _then(_self.copyWith(pagingState: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExploreAiRecipesState].
extension ExploreAiRecipesStatePatterns on ExploreAiRecipesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExploreAiRecipesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExploreAiRecipesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExploreAiRecipesState value)  $default,){
final _that = this;
switch (_that) {
case _ExploreAiRecipesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExploreAiRecipesState value)?  $default,){
final _that = this;
switch (_that) {
case _ExploreAiRecipesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DetectedIngredient> ingredients,  PagingState pagingState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExploreAiRecipesState() when $default != null:
return $default(_that.ingredients,_that.pagingState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DetectedIngredient> ingredients,  PagingState pagingState)  $default,) {final _that = this;
switch (_that) {
case _ExploreAiRecipesState():
return $default(_that.ingredients,_that.pagingState);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DetectedIngredient> ingredients,  PagingState pagingState)?  $default,) {final _that = this;
switch (_that) {
case _ExploreAiRecipesState() when $default != null:
return $default(_that.ingredients,_that.pagingState);case _:
  return null;

}
}

}

/// @nodoc


class _ExploreAiRecipesState extends ExploreAiRecipesState {
  const _ExploreAiRecipesState({final  List<DetectedIngredient> ingredients = const [], this.pagingState = const PagingState()}): _ingredients = ingredients,super._();
  

 final  List<DetectedIngredient> _ingredients;
@override@JsonKey() List<DetectedIngredient> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}

@override@JsonKey() final  PagingState pagingState;

/// Create a copy of ExploreAiRecipesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExploreAiRecipesStateCopyWith<_ExploreAiRecipesState> get copyWith => __$ExploreAiRecipesStateCopyWithImpl<_ExploreAiRecipesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExploreAiRecipesState&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&(identical(other.pagingState, pagingState) || other.pagingState == pagingState));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ingredients),pagingState);

@override
String toString() {
  return 'ExploreAiRecipesState(ingredients: $ingredients, pagingState: $pagingState)';
}


}

/// @nodoc
abstract mixin class _$ExploreAiRecipesStateCopyWith<$Res> implements $ExploreAiRecipesStateCopyWith<$Res> {
  factory _$ExploreAiRecipesStateCopyWith(_ExploreAiRecipesState value, $Res Function(_ExploreAiRecipesState) _then) = __$ExploreAiRecipesStateCopyWithImpl;
@override @useResult
$Res call({
 List<DetectedIngredient> ingredients, PagingState pagingState
});


@override $PagingStateCopyWith<$Res> get pagingState;

}
/// @nodoc
class __$ExploreAiRecipesStateCopyWithImpl<$Res>
    implements _$ExploreAiRecipesStateCopyWith<$Res> {
  __$ExploreAiRecipesStateCopyWithImpl(this._self, this._then);

  final _ExploreAiRecipesState _self;
  final $Res Function(_ExploreAiRecipesState) _then;

/// Create a copy of ExploreAiRecipesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ingredients = null,Object? pagingState = null,}) {
  return _then(_ExploreAiRecipesState(
ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<DetectedIngredient>,pagingState: null == pagingState ? _self.pagingState : pagingState // ignore: cast_nullable_to_non_nullable
as PagingState,
  ));
}

/// Create a copy of ExploreAiRecipesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PagingStateCopyWith<$Res> get pagingState {
  
  return $PagingStateCopyWith<$Res>(_self.pagingState, (value) {
    return _then(_self.copyWith(pagingState: value));
  });
}
}

// dart format on
