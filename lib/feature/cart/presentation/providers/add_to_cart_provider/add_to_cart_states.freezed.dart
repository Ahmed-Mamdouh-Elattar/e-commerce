// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_cart_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddToCartStates {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToCartStates);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToCartStates()';
}


}

/// @nodoc
class $AddToCartStatesCopyWith<$Res>  {
$AddToCartStatesCopyWith(AddToCartStates _, $Res Function(AddToCartStates) __);
}


/// Adds pattern-matching-related methods to [AddToCartStates].
extension AddToCartStatesPatterns on AddToCartStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AddToCartInitial value)?  initial,TResult Function( _AddToCartLoading value)?  loading,TResult Function( _AddToCartLoaded value)?  loaded,TResult Function( _AddToCartFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddToCartInitial() when initial != null:
return initial(_that);case _AddToCartLoading() when loading != null:
return loading(_that);case _AddToCartLoaded() when loaded != null:
return loaded(_that);case _AddToCartFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AddToCartInitial value)  initial,required TResult Function( _AddToCartLoading value)  loading,required TResult Function( _AddToCartLoaded value)  loaded,required TResult Function( _AddToCartFailure value)  failure,}){
final _that = this;
switch (_that) {
case _AddToCartInitial():
return initial(_that);case _AddToCartLoading():
return loading(_that);case _AddToCartLoaded():
return loaded(_that);case _AddToCartFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AddToCartInitial value)?  initial,TResult? Function( _AddToCartLoading value)?  loading,TResult? Function( _AddToCartLoaded value)?  loaded,TResult? Function( _AddToCartFailure value)?  failure,}){
final _that = this;
switch (_that) {
case _AddToCartInitial() when initial != null:
return initial(_that);case _AddToCartLoading() when loading != null:
return loading(_that);case _AddToCartLoaded() when loaded != null:
return loaded(_that);case _AddToCartFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  loaded,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddToCartInitial() when initial != null:
return initial();case _AddToCartLoading() when loading != null:
return loading();case _AddToCartLoaded() when loaded != null:
return loaded();case _AddToCartFailure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  loaded,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case _AddToCartInitial():
return initial();case _AddToCartLoading():
return loading();case _AddToCartLoaded():
return loaded();case _AddToCartFailure():
return failure(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  loaded,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case _AddToCartInitial() when initial != null:
return initial();case _AddToCartLoading() when loading != null:
return loading();case _AddToCartLoaded() when loaded != null:
return loaded();case _AddToCartFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _AddToCartInitial implements AddToCartStates {
  const _AddToCartInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddToCartInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToCartStates.initial()';
}


}




/// @nodoc


class _AddToCartLoading implements AddToCartStates {
  const _AddToCartLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddToCartLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToCartStates.loading()';
}


}




/// @nodoc


class _AddToCartLoaded implements AddToCartStates {
  const _AddToCartLoaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddToCartLoaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToCartStates.loaded()';
}


}




/// @nodoc


class _AddToCartFailure implements AddToCartStates {
  const _AddToCartFailure(this.message);
  

 final  String message;

/// Create a copy of AddToCartStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddToCartFailureCopyWith<_AddToCartFailure> get copyWith => __$AddToCartFailureCopyWithImpl<_AddToCartFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddToCartFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AddToCartStates.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$AddToCartFailureCopyWith<$Res> implements $AddToCartStatesCopyWith<$Res> {
  factory _$AddToCartFailureCopyWith(_AddToCartFailure value, $Res Function(_AddToCartFailure) _then) = __$AddToCartFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$AddToCartFailureCopyWithImpl<$Res>
    implements _$AddToCartFailureCopyWith<$Res> {
  __$AddToCartFailureCopyWithImpl(this._self, this._then);

  final _AddToCartFailure _self;
  final $Res Function(_AddToCartFailure) _then;

/// Create a copy of AddToCartStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_AddToCartFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
