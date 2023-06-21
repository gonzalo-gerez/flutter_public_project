// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostListEvent {
  int get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) loadPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? loadPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? loadPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPosts value) loadPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPosts value)? loadPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPosts value)? loadPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostListEventCopyWith<PostListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListEventCopyWith<$Res> {
  factory $PostListEventCopyWith(
          PostListEvent value, $Res Function(PostListEvent) then) =
      _$PostListEventCopyWithImpl<$Res, PostListEvent>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class _$PostListEventCopyWithImpl<$Res, $Val extends PostListEvent>
    implements $PostListEventCopyWith<$Res> {
  _$PostListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadPostsCopyWith<$Res>
    implements $PostListEventCopyWith<$Res> {
  factory _$$LoadPostsCopyWith(
          _$LoadPosts value, $Res Function(_$LoadPosts) then) =
      __$$LoadPostsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$LoadPostsCopyWithImpl<$Res>
    extends _$PostListEventCopyWithImpl<$Res, _$LoadPosts>
    implements _$$LoadPostsCopyWith<$Res> {
  __$$LoadPostsCopyWithImpl(
      _$LoadPosts _value, $Res Function(_$LoadPosts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$LoadPosts(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadPosts implements LoadPosts {
  const _$LoadPosts(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'PostListEvent.loadPost(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPosts &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadPostsCopyWith<_$LoadPosts> get copyWith =>
      __$$LoadPostsCopyWithImpl<_$LoadPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) loadPost,
  }) {
    return loadPost(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? loadPost,
  }) {
    return loadPost?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? loadPost,
    required TResult orElse(),
  }) {
    if (loadPost != null) {
      return loadPost(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPosts value) loadPost,
  }) {
    return loadPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPosts value)? loadPost,
  }) {
    return loadPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPosts value)? loadPost,
    required TResult orElse(),
  }) {
    if (loadPost != null) {
      return loadPost(this);
    }
    return orElse();
  }
}

abstract class LoadPosts implements PostListEvent {
  const factory LoadPosts(final int userId) = _$LoadPosts;

  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$LoadPostsCopyWith<_$LoadPosts> get copyWith =>
      throw _privateConstructorUsedError;
}
