// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Dish {

 int get dishId; String get title; String get description; String get mainImagePath; DateTime get createDate; int get cookingTimeMinutes; int? get categoryId; bool get isLiked; bool get isDisliked; bool get isSaved; int get likes; int get dislikes; int? get recordedAtMs;
/// Create a copy of Dish
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishCopyWith<Dish> get copyWith => _$DishCopyWithImpl<Dish>(this as Dish, _$identity);

  /// Serializes this Dish to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Dish&&(identical(other.dishId, dishId) || other.dishId == dishId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.mainImagePath, mainImagePath) || other.mainImagePath == mainImagePath)&&(identical(other.createDate, createDate) || other.createDate == createDate)&&(identical(other.cookingTimeMinutes, cookingTimeMinutes) || other.cookingTimeMinutes == cookingTimeMinutes)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isDisliked, isDisliked) || other.isDisliked == isDisliked)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.dislikes, dislikes) || other.dislikes == dislikes)&&(identical(other.recordedAtMs, recordedAtMs) || other.recordedAtMs == recordedAtMs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dishId,title,description,mainImagePath,createDate,cookingTimeMinutes,categoryId,isLiked,isDisliked,isSaved,likes,dislikes,recordedAtMs);

@override
String toString() {
  return 'Dish(dishId: $dishId, title: $title, description: $description, mainImagePath: $mainImagePath, createDate: $createDate, cookingTimeMinutes: $cookingTimeMinutes, categoryId: $categoryId, isLiked: $isLiked, isDisliked: $isDisliked, isSaved: $isSaved, likes: $likes, dislikes: $dislikes, recordedAtMs: $recordedAtMs)';
}


}

/// @nodoc
abstract mixin class $DishCopyWith<$Res>  {
  factory $DishCopyWith(Dish value, $Res Function(Dish) _then) = _$DishCopyWithImpl;
@useResult
$Res call({
 int dishId, String title, String description, String mainImagePath, DateTime createDate, int cookingTimeMinutes, int? categoryId, bool isLiked, bool isDisliked, bool isSaved, int likes, int dislikes, int? recordedAtMs
});




}
/// @nodoc
class _$DishCopyWithImpl<$Res>
    implements $DishCopyWith<$Res> {
  _$DishCopyWithImpl(this._self, this._then);

  final Dish _self;
  final $Res Function(Dish) _then;

/// Create a copy of Dish
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dishId = null,Object? title = null,Object? description = null,Object? mainImagePath = null,Object? createDate = null,Object? cookingTimeMinutes = null,Object? categoryId = freezed,Object? isLiked = null,Object? isDisliked = null,Object? isSaved = null,Object? likes = null,Object? dislikes = null,Object? recordedAtMs = freezed,}) {
  return _then(_self.copyWith(
dishId: null == dishId ? _self.dishId : dishId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,mainImagePath: null == mainImagePath ? _self.mainImagePath : mainImagePath // ignore: cast_nullable_to_non_nullable
as String,createDate: null == createDate ? _self.createDate : createDate // ignore: cast_nullable_to_non_nullable
as DateTime,cookingTimeMinutes: null == cookingTimeMinutes ? _self.cookingTimeMinutes : cookingTimeMinutes // ignore: cast_nullable_to_non_nullable
as int,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,isDisliked: null == isDisliked ? _self.isDisliked : isDisliked // ignore: cast_nullable_to_non_nullable
as bool,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int,dislikes: null == dislikes ? _self.dislikes : dislikes // ignore: cast_nullable_to_non_nullable
as int,recordedAtMs: freezed == recordedAtMs ? _self.recordedAtMs : recordedAtMs // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Dish].
extension DishPatterns on Dish {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Dish value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Dish() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Dish value)  $default,){
final _that = this;
switch (_that) {
case _Dish():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Dish value)?  $default,){
final _that = this;
switch (_that) {
case _Dish() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int dishId,  String title,  String description,  String mainImagePath,  DateTime createDate,  int cookingTimeMinutes,  int? categoryId,  bool isLiked,  bool isDisliked,  bool isSaved,  int likes,  int dislikes,  int? recordedAtMs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Dish() when $default != null:
return $default(_that.dishId,_that.title,_that.description,_that.mainImagePath,_that.createDate,_that.cookingTimeMinutes,_that.categoryId,_that.isLiked,_that.isDisliked,_that.isSaved,_that.likes,_that.dislikes,_that.recordedAtMs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int dishId,  String title,  String description,  String mainImagePath,  DateTime createDate,  int cookingTimeMinutes,  int? categoryId,  bool isLiked,  bool isDisliked,  bool isSaved,  int likes,  int dislikes,  int? recordedAtMs)  $default,) {final _that = this;
switch (_that) {
case _Dish():
return $default(_that.dishId,_that.title,_that.description,_that.mainImagePath,_that.createDate,_that.cookingTimeMinutes,_that.categoryId,_that.isLiked,_that.isDisliked,_that.isSaved,_that.likes,_that.dislikes,_that.recordedAtMs);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int dishId,  String title,  String description,  String mainImagePath,  DateTime createDate,  int cookingTimeMinutes,  int? categoryId,  bool isLiked,  bool isDisliked,  bool isSaved,  int likes,  int dislikes,  int? recordedAtMs)?  $default,) {final _that = this;
switch (_that) {
case _Dish() when $default != null:
return $default(_that.dishId,_that.title,_that.description,_that.mainImagePath,_that.createDate,_that.cookingTimeMinutes,_that.categoryId,_that.isLiked,_that.isDisliked,_that.isSaved,_that.likes,_that.dislikes,_that.recordedAtMs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Dish implements Dish {
  const _Dish({required this.dishId, required this.title, required this.description, required this.mainImagePath, required this.createDate, required this.cookingTimeMinutes, required this.categoryId, required this.isLiked, required this.isDisliked, required this.isSaved, required this.likes, required this.dislikes, this.recordedAtMs});
  factory _Dish.fromJson(Map<String, dynamic> json) => _$DishFromJson(json);

@override final  int dishId;
@override final  String title;
@override final  String description;
@override final  String mainImagePath;
@override final  DateTime createDate;
@override final  int cookingTimeMinutes;
@override final  int? categoryId;
@override final  bool isLiked;
@override final  bool isDisliked;
@override final  bool isSaved;
@override final  int likes;
@override final  int dislikes;
@override final  int? recordedAtMs;

/// Create a copy of Dish
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DishCopyWith<_Dish> get copyWith => __$DishCopyWithImpl<_Dish>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DishToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dish&&(identical(other.dishId, dishId) || other.dishId == dishId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.mainImagePath, mainImagePath) || other.mainImagePath == mainImagePath)&&(identical(other.createDate, createDate) || other.createDate == createDate)&&(identical(other.cookingTimeMinutes, cookingTimeMinutes) || other.cookingTimeMinutes == cookingTimeMinutes)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isDisliked, isDisliked) || other.isDisliked == isDisliked)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.dislikes, dislikes) || other.dislikes == dislikes)&&(identical(other.recordedAtMs, recordedAtMs) || other.recordedAtMs == recordedAtMs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dishId,title,description,mainImagePath,createDate,cookingTimeMinutes,categoryId,isLiked,isDisliked,isSaved,likes,dislikes,recordedAtMs);

@override
String toString() {
  return 'Dish(dishId: $dishId, title: $title, description: $description, mainImagePath: $mainImagePath, createDate: $createDate, cookingTimeMinutes: $cookingTimeMinutes, categoryId: $categoryId, isLiked: $isLiked, isDisliked: $isDisliked, isSaved: $isSaved, likes: $likes, dislikes: $dislikes, recordedAtMs: $recordedAtMs)';
}


}

/// @nodoc
abstract mixin class _$DishCopyWith<$Res> implements $DishCopyWith<$Res> {
  factory _$DishCopyWith(_Dish value, $Res Function(_Dish) _then) = __$DishCopyWithImpl;
@override @useResult
$Res call({
 int dishId, String title, String description, String mainImagePath, DateTime createDate, int cookingTimeMinutes, int? categoryId, bool isLiked, bool isDisliked, bool isSaved, int likes, int dislikes, int? recordedAtMs
});




}
/// @nodoc
class __$DishCopyWithImpl<$Res>
    implements _$DishCopyWith<$Res> {
  __$DishCopyWithImpl(this._self, this._then);

  final _Dish _self;
  final $Res Function(_Dish) _then;

/// Create a copy of Dish
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dishId = null,Object? title = null,Object? description = null,Object? mainImagePath = null,Object? createDate = null,Object? cookingTimeMinutes = null,Object? categoryId = freezed,Object? isLiked = null,Object? isDisliked = null,Object? isSaved = null,Object? likes = null,Object? dislikes = null,Object? recordedAtMs = freezed,}) {
  return _then(_Dish(
dishId: null == dishId ? _self.dishId : dishId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,mainImagePath: null == mainImagePath ? _self.mainImagePath : mainImagePath // ignore: cast_nullable_to_non_nullable
as String,createDate: null == createDate ? _self.createDate : createDate // ignore: cast_nullable_to_non_nullable
as DateTime,cookingTimeMinutes: null == cookingTimeMinutes ? _self.cookingTimeMinutes : cookingTimeMinutes // ignore: cast_nullable_to_non_nullable
as int,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,isDisliked: null == isDisliked ? _self.isDisliked : isDisliked // ignore: cast_nullable_to_non_nullable
as bool,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int,dislikes: null == dislikes ? _self.dislikes : dislikes // ignore: cast_nullable_to_non_nullable
as int,recordedAtMs: freezed == recordedAtMs ? _self.recordedAtMs : recordedAtMs // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
