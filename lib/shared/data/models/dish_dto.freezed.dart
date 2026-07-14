// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DishDto {

 int get dishId; String? get title; String? get description; String? get mainImagePath; DateTime get createDate; int get cookingTimeMinutes; bool get isPublic; int? get originalDishApiId; DishCategoryDto get dishCategory; bool get isEditable; bool get isLiked; bool get isDisliked; int get dislikes; int get likes; bool get isSaved; String? get source;
/// Create a copy of DishDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishDtoCopyWith<DishDto> get copyWith => _$DishDtoCopyWithImpl<DishDto>(this as DishDto, _$identity);

  /// Serializes this DishDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDto&&(identical(other.dishId, dishId) || other.dishId == dishId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.mainImagePath, mainImagePath) || other.mainImagePath == mainImagePath)&&(identical(other.createDate, createDate) || other.createDate == createDate)&&(identical(other.cookingTimeMinutes, cookingTimeMinutes) || other.cookingTimeMinutes == cookingTimeMinutes)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&(identical(other.originalDishApiId, originalDishApiId) || other.originalDishApiId == originalDishApiId)&&(identical(other.dishCategory, dishCategory) || other.dishCategory == dishCategory)&&(identical(other.isEditable, isEditable) || other.isEditable == isEditable)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isDisliked, isDisliked) || other.isDisliked == isDisliked)&&(identical(other.dislikes, dislikes) || other.dislikes == dislikes)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dishId,title,description,mainImagePath,createDate,cookingTimeMinutes,isPublic,originalDishApiId,dishCategory,isEditable,isLiked,isDisliked,dislikes,likes,isSaved,source);

@override
String toString() {
  return 'DishDto(dishId: $dishId, title: $title, description: $description, mainImagePath: $mainImagePath, createDate: $createDate, cookingTimeMinutes: $cookingTimeMinutes, isPublic: $isPublic, originalDishApiId: $originalDishApiId, dishCategory: $dishCategory, isEditable: $isEditable, isLiked: $isLiked, isDisliked: $isDisliked, dislikes: $dislikes, likes: $likes, isSaved: $isSaved, source: $source)';
}


}

/// @nodoc
abstract mixin class $DishDtoCopyWith<$Res>  {
  factory $DishDtoCopyWith(DishDto value, $Res Function(DishDto) _then) = _$DishDtoCopyWithImpl;
@useResult
$Res call({
 int dishId, String? title, String? description, String? mainImagePath, DateTime createDate, int cookingTimeMinutes, bool isPublic, int? originalDishApiId, DishCategoryDto dishCategory, bool isEditable, bool isLiked, bool isDisliked, int dislikes, int likes, bool isSaved, String? source
});


$DishCategoryDtoCopyWith<$Res> get dishCategory;

}
/// @nodoc
class _$DishDtoCopyWithImpl<$Res>
    implements $DishDtoCopyWith<$Res> {
  _$DishDtoCopyWithImpl(this._self, this._then);

  final DishDto _self;
  final $Res Function(DishDto) _then;

/// Create a copy of DishDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dishId = null,Object? title = freezed,Object? description = freezed,Object? mainImagePath = freezed,Object? createDate = null,Object? cookingTimeMinutes = null,Object? isPublic = null,Object? originalDishApiId = freezed,Object? dishCategory = null,Object? isEditable = null,Object? isLiked = null,Object? isDisliked = null,Object? dislikes = null,Object? likes = null,Object? isSaved = null,Object? source = freezed,}) {
  return _then(_self.copyWith(
dishId: null == dishId ? _self.dishId : dishId // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,mainImagePath: freezed == mainImagePath ? _self.mainImagePath : mainImagePath // ignore: cast_nullable_to_non_nullable
as String?,createDate: null == createDate ? _self.createDate : createDate // ignore: cast_nullable_to_non_nullable
as DateTime,cookingTimeMinutes: null == cookingTimeMinutes ? _self.cookingTimeMinutes : cookingTimeMinutes // ignore: cast_nullable_to_non_nullable
as int,isPublic: null == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool,originalDishApiId: freezed == originalDishApiId ? _self.originalDishApiId : originalDishApiId // ignore: cast_nullable_to_non_nullable
as int?,dishCategory: null == dishCategory ? _self.dishCategory : dishCategory // ignore: cast_nullable_to_non_nullable
as DishCategoryDto,isEditable: null == isEditable ? _self.isEditable : isEditable // ignore: cast_nullable_to_non_nullable
as bool,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,isDisliked: null == isDisliked ? _self.isDisliked : isDisliked // ignore: cast_nullable_to_non_nullable
as bool,dislikes: null == dislikes ? _self.dislikes : dislikes // ignore: cast_nullable_to_non_nullable
as int,likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DishDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DishCategoryDtoCopyWith<$Res> get dishCategory {
  
  return $DishCategoryDtoCopyWith<$Res>(_self.dishCategory, (value) {
    return _then(_self.copyWith(dishCategory: value));
  });
}
}


/// Adds pattern-matching-related methods to [DishDto].
extension DishDtoPatterns on DishDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DishDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DishDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DishDto value)  $default,){
final _that = this;
switch (_that) {
case _DishDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DishDto value)?  $default,){
final _that = this;
switch (_that) {
case _DishDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int dishId,  String? title,  String? description,  String? mainImagePath,  DateTime createDate,  int cookingTimeMinutes,  bool isPublic,  int? originalDishApiId,  DishCategoryDto dishCategory,  bool isEditable,  bool isLiked,  bool isDisliked,  int dislikes,  int likes,  bool isSaved,  String? source)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DishDto() when $default != null:
return $default(_that.dishId,_that.title,_that.description,_that.mainImagePath,_that.createDate,_that.cookingTimeMinutes,_that.isPublic,_that.originalDishApiId,_that.dishCategory,_that.isEditable,_that.isLiked,_that.isDisliked,_that.dislikes,_that.likes,_that.isSaved,_that.source);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int dishId,  String? title,  String? description,  String? mainImagePath,  DateTime createDate,  int cookingTimeMinutes,  bool isPublic,  int? originalDishApiId,  DishCategoryDto dishCategory,  bool isEditable,  bool isLiked,  bool isDisliked,  int dislikes,  int likes,  bool isSaved,  String? source)  $default,) {final _that = this;
switch (_that) {
case _DishDto():
return $default(_that.dishId,_that.title,_that.description,_that.mainImagePath,_that.createDate,_that.cookingTimeMinutes,_that.isPublic,_that.originalDishApiId,_that.dishCategory,_that.isEditable,_that.isLiked,_that.isDisliked,_that.dislikes,_that.likes,_that.isSaved,_that.source);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int dishId,  String? title,  String? description,  String? mainImagePath,  DateTime createDate,  int cookingTimeMinutes,  bool isPublic,  int? originalDishApiId,  DishCategoryDto dishCategory,  bool isEditable,  bool isLiked,  bool isDisliked,  int dislikes,  int likes,  bool isSaved,  String? source)?  $default,) {final _that = this;
switch (_that) {
case _DishDto() when $default != null:
return $default(_that.dishId,_that.title,_that.description,_that.mainImagePath,_that.createDate,_that.cookingTimeMinutes,_that.isPublic,_that.originalDishApiId,_that.dishCategory,_that.isEditable,_that.isLiked,_that.isDisliked,_that.dislikes,_that.likes,_that.isSaved,_that.source);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DishDto implements DishDto {
  const _DishDto({required this.dishId, this.title, this.description, this.mainImagePath, required this.createDate, required this.cookingTimeMinutes, required this.isPublic, this.originalDishApiId, required this.dishCategory, required this.isEditable, required this.isLiked, required this.isDisliked, required this.dislikes, required this.likes, required this.isSaved, this.source});
  factory _DishDto.fromJson(Map<String, dynamic> json) => _$DishDtoFromJson(json);

@override final  int dishId;
@override final  String? title;
@override final  String? description;
@override final  String? mainImagePath;
@override final  DateTime createDate;
@override final  int cookingTimeMinutes;
@override final  bool isPublic;
@override final  int? originalDishApiId;
@override final  DishCategoryDto dishCategory;
@override final  bool isEditable;
@override final  bool isLiked;
@override final  bool isDisliked;
@override final  int dislikes;
@override final  int likes;
@override final  bool isSaved;
@override final  String? source;

/// Create a copy of DishDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DishDtoCopyWith<_DishDto> get copyWith => __$DishDtoCopyWithImpl<_DishDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DishDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DishDto&&(identical(other.dishId, dishId) || other.dishId == dishId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.mainImagePath, mainImagePath) || other.mainImagePath == mainImagePath)&&(identical(other.createDate, createDate) || other.createDate == createDate)&&(identical(other.cookingTimeMinutes, cookingTimeMinutes) || other.cookingTimeMinutes == cookingTimeMinutes)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&(identical(other.originalDishApiId, originalDishApiId) || other.originalDishApiId == originalDishApiId)&&(identical(other.dishCategory, dishCategory) || other.dishCategory == dishCategory)&&(identical(other.isEditable, isEditable) || other.isEditable == isEditable)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isDisliked, isDisliked) || other.isDisliked == isDisliked)&&(identical(other.dislikes, dislikes) || other.dislikes == dislikes)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dishId,title,description,mainImagePath,createDate,cookingTimeMinutes,isPublic,originalDishApiId,dishCategory,isEditable,isLiked,isDisliked,dislikes,likes,isSaved,source);

@override
String toString() {
  return 'DishDto(dishId: $dishId, title: $title, description: $description, mainImagePath: $mainImagePath, createDate: $createDate, cookingTimeMinutes: $cookingTimeMinutes, isPublic: $isPublic, originalDishApiId: $originalDishApiId, dishCategory: $dishCategory, isEditable: $isEditable, isLiked: $isLiked, isDisliked: $isDisliked, dislikes: $dislikes, likes: $likes, isSaved: $isSaved, source: $source)';
}


}

/// @nodoc
abstract mixin class _$DishDtoCopyWith<$Res> implements $DishDtoCopyWith<$Res> {
  factory _$DishDtoCopyWith(_DishDto value, $Res Function(_DishDto) _then) = __$DishDtoCopyWithImpl;
@override @useResult
$Res call({
 int dishId, String? title, String? description, String? mainImagePath, DateTime createDate, int cookingTimeMinutes, bool isPublic, int? originalDishApiId, DishCategoryDto dishCategory, bool isEditable, bool isLiked, bool isDisliked, int dislikes, int likes, bool isSaved, String? source
});


@override $DishCategoryDtoCopyWith<$Res> get dishCategory;

}
/// @nodoc
class __$DishDtoCopyWithImpl<$Res>
    implements _$DishDtoCopyWith<$Res> {
  __$DishDtoCopyWithImpl(this._self, this._then);

  final _DishDto _self;
  final $Res Function(_DishDto) _then;

/// Create a copy of DishDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dishId = null,Object? title = freezed,Object? description = freezed,Object? mainImagePath = freezed,Object? createDate = null,Object? cookingTimeMinutes = null,Object? isPublic = null,Object? originalDishApiId = freezed,Object? dishCategory = null,Object? isEditable = null,Object? isLiked = null,Object? isDisliked = null,Object? dislikes = null,Object? likes = null,Object? isSaved = null,Object? source = freezed,}) {
  return _then(_DishDto(
dishId: null == dishId ? _self.dishId : dishId // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,mainImagePath: freezed == mainImagePath ? _self.mainImagePath : mainImagePath // ignore: cast_nullable_to_non_nullable
as String?,createDate: null == createDate ? _self.createDate : createDate // ignore: cast_nullable_to_non_nullable
as DateTime,cookingTimeMinutes: null == cookingTimeMinutes ? _self.cookingTimeMinutes : cookingTimeMinutes // ignore: cast_nullable_to_non_nullable
as int,isPublic: null == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool,originalDishApiId: freezed == originalDishApiId ? _self.originalDishApiId : originalDishApiId // ignore: cast_nullable_to_non_nullable
as int?,dishCategory: null == dishCategory ? _self.dishCategory : dishCategory // ignore: cast_nullable_to_non_nullable
as DishCategoryDto,isEditable: null == isEditable ? _self.isEditable : isEditable // ignore: cast_nullable_to_non_nullable
as bool,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,isDisliked: null == isDisliked ? _self.isDisliked : isDisliked // ignore: cast_nullable_to_non_nullable
as bool,dislikes: null == dislikes ? _self.dislikes : dislikes // ignore: cast_nullable_to_non_nullable
as int,likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DishDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DishCategoryDtoCopyWith<$Res> get dishCategory {
  
  return $DishCategoryDtoCopyWith<$Res>(_self.dishCategory, (value) {
    return _then(_self.copyWith(dishCategory: value));
  });
}
}


/// @nodoc
mixin _$DishCategoryDto {

@JsonKey(name: 'dish_category_id') int? get dishCategoryId; String get name;
/// Create a copy of DishCategoryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishCategoryDtoCopyWith<DishCategoryDto> get copyWith => _$DishCategoryDtoCopyWithImpl<DishCategoryDto>(this as DishCategoryDto, _$identity);

  /// Serializes this DishCategoryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishCategoryDto&&(identical(other.dishCategoryId, dishCategoryId) || other.dishCategoryId == dishCategoryId)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dishCategoryId,name);

@override
String toString() {
  return 'DishCategoryDto(dishCategoryId: $dishCategoryId, name: $name)';
}


}

/// @nodoc
abstract mixin class $DishCategoryDtoCopyWith<$Res>  {
  factory $DishCategoryDtoCopyWith(DishCategoryDto value, $Res Function(DishCategoryDto) _then) = _$DishCategoryDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'dish_category_id') int? dishCategoryId, String name
});




}
/// @nodoc
class _$DishCategoryDtoCopyWithImpl<$Res>
    implements $DishCategoryDtoCopyWith<$Res> {
  _$DishCategoryDtoCopyWithImpl(this._self, this._then);

  final DishCategoryDto _self;
  final $Res Function(DishCategoryDto) _then;

/// Create a copy of DishCategoryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dishCategoryId = freezed,Object? name = null,}) {
  return _then(_self.copyWith(
dishCategoryId: freezed == dishCategoryId ? _self.dishCategoryId : dishCategoryId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DishCategoryDto].
extension DishCategoryDtoPatterns on DishCategoryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DishCategoryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DishCategoryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DishCategoryDto value)  $default,){
final _that = this;
switch (_that) {
case _DishCategoryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DishCategoryDto value)?  $default,){
final _that = this;
switch (_that) {
case _DishCategoryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'dish_category_id')  int? dishCategoryId,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DishCategoryDto() when $default != null:
return $default(_that.dishCategoryId,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'dish_category_id')  int? dishCategoryId,  String name)  $default,) {final _that = this;
switch (_that) {
case _DishCategoryDto():
return $default(_that.dishCategoryId,_that.name);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'dish_category_id')  int? dishCategoryId,  String name)?  $default,) {final _that = this;
switch (_that) {
case _DishCategoryDto() when $default != null:
return $default(_that.dishCategoryId,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DishCategoryDto implements DishCategoryDto {
  const _DishCategoryDto({@JsonKey(name: 'dish_category_id') this.dishCategoryId, required this.name});
  factory _DishCategoryDto.fromJson(Map<String, dynamic> json) => _$DishCategoryDtoFromJson(json);

@override@JsonKey(name: 'dish_category_id') final  int? dishCategoryId;
@override final  String name;

/// Create a copy of DishCategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DishCategoryDtoCopyWith<_DishCategoryDto> get copyWith => __$DishCategoryDtoCopyWithImpl<_DishCategoryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DishCategoryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DishCategoryDto&&(identical(other.dishCategoryId, dishCategoryId) || other.dishCategoryId == dishCategoryId)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dishCategoryId,name);

@override
String toString() {
  return 'DishCategoryDto(dishCategoryId: $dishCategoryId, name: $name)';
}


}

/// @nodoc
abstract mixin class _$DishCategoryDtoCopyWith<$Res> implements $DishCategoryDtoCopyWith<$Res> {
  factory _$DishCategoryDtoCopyWith(_DishCategoryDto value, $Res Function(_DishCategoryDto) _then) = __$DishCategoryDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'dish_category_id') int? dishCategoryId, String name
});




}
/// @nodoc
class __$DishCategoryDtoCopyWithImpl<$Res>
    implements _$DishCategoryDtoCopyWith<$Res> {
  __$DishCategoryDtoCopyWithImpl(this._self, this._then);

  final _DishCategoryDto _self;
  final $Res Function(_DishCategoryDto) _then;

/// Create a copy of DishCategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dishCategoryId = freezed,Object? name = null,}) {
  return _then(_DishCategoryDto(
dishCategoryId: freezed == dishCategoryId ? _self.dishCategoryId : dishCategoryId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
