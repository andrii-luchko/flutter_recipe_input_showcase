// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paging_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PagingState {

 List<Dish> get dishes; int get nextPage; bool get hasMore; bool get isInitialLoading; bool get isLoadingMore; String? get initialError; String? get loadMoreError;
/// Create a copy of PagingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PagingStateCopyWith<PagingState> get copyWith => _$PagingStateCopyWithImpl<PagingState>(this as PagingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PagingState&&const DeepCollectionEquality().equals(other.dishes, dishes)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isInitialLoading, isInitialLoading) || other.isInitialLoading == isInitialLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.initialError, initialError) || other.initialError == initialError)&&(identical(other.loadMoreError, loadMoreError) || other.loadMoreError == loadMoreError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(dishes),nextPage,hasMore,isInitialLoading,isLoadingMore,initialError,loadMoreError);

@override
String toString() {
  return 'PagingState(dishes: $dishes, nextPage: $nextPage, hasMore: $hasMore, isInitialLoading: $isInitialLoading, isLoadingMore: $isLoadingMore, initialError: $initialError, loadMoreError: $loadMoreError)';
}


}

/// @nodoc
abstract mixin class $PagingStateCopyWith<$Res>  {
  factory $PagingStateCopyWith(PagingState value, $Res Function(PagingState) _then) = _$PagingStateCopyWithImpl;
@useResult
$Res call({
 List<Dish> dishes, int nextPage, bool hasMore, bool isInitialLoading, bool isLoadingMore, String? initialError, String? loadMoreError
});




}
/// @nodoc
class _$PagingStateCopyWithImpl<$Res>
    implements $PagingStateCopyWith<$Res> {
  _$PagingStateCopyWithImpl(this._self, this._then);

  final PagingState _self;
  final $Res Function(PagingState) _then;

/// Create a copy of PagingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dishes = null,Object? nextPage = null,Object? hasMore = null,Object? isInitialLoading = null,Object? isLoadingMore = null,Object? initialError = freezed,Object? loadMoreError = freezed,}) {
  return _then(_self.copyWith(
dishes: null == dishes ? _self.dishes : dishes // ignore: cast_nullable_to_non_nullable
as List<Dish>,nextPage: null == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isInitialLoading: null == isInitialLoading ? _self.isInitialLoading : isInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,initialError: freezed == initialError ? _self.initialError : initialError // ignore: cast_nullable_to_non_nullable
as String?,loadMoreError: freezed == loadMoreError ? _self.loadMoreError : loadMoreError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PagingState].
extension PagingStatePatterns on PagingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PagingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PagingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PagingState value)  $default,){
final _that = this;
switch (_that) {
case _PagingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PagingState value)?  $default,){
final _that = this;
switch (_that) {
case _PagingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Dish> dishes,  int nextPage,  bool hasMore,  bool isInitialLoading,  bool isLoadingMore,  String? initialError,  String? loadMoreError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PagingState() when $default != null:
return $default(_that.dishes,_that.nextPage,_that.hasMore,_that.isInitialLoading,_that.isLoadingMore,_that.initialError,_that.loadMoreError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Dish> dishes,  int nextPage,  bool hasMore,  bool isInitialLoading,  bool isLoadingMore,  String? initialError,  String? loadMoreError)  $default,) {final _that = this;
switch (_that) {
case _PagingState():
return $default(_that.dishes,_that.nextPage,_that.hasMore,_that.isInitialLoading,_that.isLoadingMore,_that.initialError,_that.loadMoreError);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Dish> dishes,  int nextPage,  bool hasMore,  bool isInitialLoading,  bool isLoadingMore,  String? initialError,  String? loadMoreError)?  $default,) {final _that = this;
switch (_that) {
case _PagingState() when $default != null:
return $default(_that.dishes,_that.nextPage,_that.hasMore,_that.isInitialLoading,_that.isLoadingMore,_that.initialError,_that.loadMoreError);case _:
  return null;

}
}

}

/// @nodoc


class _PagingState extends PagingState {
  const _PagingState({final  List<Dish> dishes = const [], this.nextPage = 1, this.hasMore = false, this.isInitialLoading = false, this.isLoadingMore = false, this.initialError, this.loadMoreError}): _dishes = dishes,super._();
  

 final  List<Dish> _dishes;
@override@JsonKey() List<Dish> get dishes {
  if (_dishes is EqualUnmodifiableListView) return _dishes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dishes);
}

@override@JsonKey() final  int nextPage;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  bool isInitialLoading;
@override@JsonKey() final  bool isLoadingMore;
@override final  String? initialError;
@override final  String? loadMoreError;

/// Create a copy of PagingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PagingStateCopyWith<_PagingState> get copyWith => __$PagingStateCopyWithImpl<_PagingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PagingState&&const DeepCollectionEquality().equals(other._dishes, _dishes)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isInitialLoading, isInitialLoading) || other.isInitialLoading == isInitialLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.initialError, initialError) || other.initialError == initialError)&&(identical(other.loadMoreError, loadMoreError) || other.loadMoreError == loadMoreError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_dishes),nextPage,hasMore,isInitialLoading,isLoadingMore,initialError,loadMoreError);

@override
String toString() {
  return 'PagingState(dishes: $dishes, nextPage: $nextPage, hasMore: $hasMore, isInitialLoading: $isInitialLoading, isLoadingMore: $isLoadingMore, initialError: $initialError, loadMoreError: $loadMoreError)';
}


}

/// @nodoc
abstract mixin class _$PagingStateCopyWith<$Res> implements $PagingStateCopyWith<$Res> {
  factory _$PagingStateCopyWith(_PagingState value, $Res Function(_PagingState) _then) = __$PagingStateCopyWithImpl;
@override @useResult
$Res call({
 List<Dish> dishes, int nextPage, bool hasMore, bool isInitialLoading, bool isLoadingMore, String? initialError, String? loadMoreError
});




}
/// @nodoc
class __$PagingStateCopyWithImpl<$Res>
    implements _$PagingStateCopyWith<$Res> {
  __$PagingStateCopyWithImpl(this._self, this._then);

  final _PagingState _self;
  final $Res Function(_PagingState) _then;

/// Create a copy of PagingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dishes = null,Object? nextPage = null,Object? hasMore = null,Object? isInitialLoading = null,Object? isLoadingMore = null,Object? initialError = freezed,Object? loadMoreError = freezed,}) {
  return _then(_PagingState(
dishes: null == dishes ? _self._dishes : dishes // ignore: cast_nullable_to_non_nullable
as List<Dish>,nextPage: null == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isInitialLoading: null == isInitialLoading ? _self.isInitialLoading : isInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,initialError: freezed == initialError ? _self.initialError : initialError // ignore: cast_nullable_to_non_nullable
as String?,loadMoreError: freezed == loadMoreError ? _self.loadMoreError : loadMoreError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
