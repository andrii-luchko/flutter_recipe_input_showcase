import 'package:flutter/material.dart';

@immutable
sealed class Result<T> {
  const Result();

  const factory Result.success(T value) = Success<T>;
  const factory Result.failure(Exception error, [StackTrace? stackTrace]) =
      Failure<T>;

  /// Functional handling of the result.
  R fold<R>({
    required R Function(T value) onSuccess,
    required R Function(Exception error, StackTrace? stackTrace) onError,
  }) {
    return switch (this) {
      Success<T>(:final value) => onSuccess(value),
      Failure<T>(:final error, :final stackTrace) => onError(error, stackTrace),
    };
  }

  /// Transforms the value if this is a [Success].
  Result<R> map<R>(R Function(T value) transform) {
    return switch (this) {
      Success<T>(:final value) => Success<R>(transform(value)),
      Failure<T>(:final error, :final stackTrace) => Failure<R>(
        error,
        stackTrace,
      ),
    };
  }

  /// Asynchronously transforms the value if this is a [Success].
  Future<Result<R>> asyncMap<R>(Future<R> Function(T value) transform) async {
    return switch (this) {
      Success<T>(:final value) => Success<R>(await transform(value)),
      Failure<T>(:final error, :final stackTrace) => Failure<R>(
        error,
        stackTrace,
      ),
    };
  }

  /// Transforms the error if this is an [Failure].
  Result<T> mapError(Exception Function(Exception error) transform) {
    return switch (this) {
      Success<T>() => this,
      Failure<T>(:final error, :final stackTrace) => Failure<T>(
        transform(error),
        stackTrace,
      ),
    };
  }

  /// Returns the value if [Success], or throws the error if [Failure].
  T getOrThrow() {
    return switch (this) {
      Success<T>(:final value) => value,
      Failure<T>(:final error) => throw error,
    };
  }

  /// Returns the value if [Success], otherwise returns [defaultValue].
  T getOrElse(T defaultValue) =>
      this is Success<T> ? (this as Success<T>).value : defaultValue;

  /// Returns the value if [Success], otherwise returns null.
  T? get orNull => this is Success<T> ? (this as Success<T>).value : null;

  bool get isSuccess => this is Success<T>;
  bool get isError => this is Failure<T>;
}

@immutable
final class Success<T> extends Result<T> {
  const Success(this.value);
  final T value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is Success<T> && other.value == value);

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Result<$T>.success($value)';
}

@immutable
final class Failure<T> extends Result<T> {
  const Failure(this.error, [this.stackTrace]);
  final Exception error;
  final StackTrace? stackTrace;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Failure<T> &&
          other.error == error &&
          other.stackTrace == stackTrace);

  @override
  int get hashCode => Object.hash(error, stackTrace);

  @override
  String toString() => 'Result<$T>.error($error)';
}
