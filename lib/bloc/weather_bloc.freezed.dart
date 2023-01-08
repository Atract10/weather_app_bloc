// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setup,
    required TResult Function(String city) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setup,
    TResult? Function(String city)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setup,
    TResult Function(String city)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetupWeatherEvent value) setup,
    required TResult Function(_FetchWeatherEvent value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetupWeatherEvent value)? setup,
    TResult? Function(_FetchWeatherEvent value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetupWeatherEvent value)? setup,
    TResult Function(_FetchWeatherEvent value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SetupWeatherEventCopyWith<$Res> {
  factory _$$_SetupWeatherEventCopyWith(_$_SetupWeatherEvent value,
          $Res Function(_$_SetupWeatherEvent) then) =
      __$$_SetupWeatherEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetupWeatherEventCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_SetupWeatherEvent>
    implements _$$_SetupWeatherEventCopyWith<$Res> {
  __$$_SetupWeatherEventCopyWithImpl(
      _$_SetupWeatherEvent _value, $Res Function(_$_SetupWeatherEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetupWeatherEvent extends _SetupWeatherEvent {
  const _$_SetupWeatherEvent() : super._();

  @override
  String toString() {
    return 'WeatherEvent.setup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetupWeatherEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setup,
    required TResult Function(String city) fetch,
  }) {
    return setup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setup,
    TResult? Function(String city)? fetch,
  }) {
    return setup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setup,
    TResult Function(String city)? fetch,
    required TResult orElse(),
  }) {
    if (setup != null) {
      return setup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetupWeatherEvent value) setup,
    required TResult Function(_FetchWeatherEvent value) fetch,
  }) {
    return setup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetupWeatherEvent value)? setup,
    TResult? Function(_FetchWeatherEvent value)? fetch,
  }) {
    return setup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetupWeatherEvent value)? setup,
    TResult Function(_FetchWeatherEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (setup != null) {
      return setup(this);
    }
    return orElse();
  }
}

abstract class _SetupWeatherEvent extends WeatherEvent {
  const factory _SetupWeatherEvent() = _$_SetupWeatherEvent;
  const _SetupWeatherEvent._() : super._();
}

/// @nodoc
abstract class _$$_FetchWeatherEventCopyWith<$Res> {
  factory _$$_FetchWeatherEventCopyWith(_$_FetchWeatherEvent value,
          $Res Function(_$_FetchWeatherEvent) then) =
      __$$_FetchWeatherEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String city});
}

/// @nodoc
class __$$_FetchWeatherEventCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_FetchWeatherEvent>
    implements _$$_FetchWeatherEventCopyWith<$Res> {
  __$$_FetchWeatherEventCopyWithImpl(
      _$_FetchWeatherEvent _value, $Res Function(_$_FetchWeatherEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
  }) {
    return _then(_$_FetchWeatherEvent(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchWeatherEvent extends _FetchWeatherEvent {
  const _$_FetchWeatherEvent({required this.city}) : super._();

  @override
  final String city;

  @override
  String toString() {
    return 'WeatherEvent.fetch(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchWeatherEvent &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchWeatherEventCopyWith<_$_FetchWeatherEvent> get copyWith =>
      __$$_FetchWeatherEventCopyWithImpl<_$_FetchWeatherEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setup,
    required TResult Function(String city) fetch,
  }) {
    return fetch(city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setup,
    TResult? Function(String city)? fetch,
  }) {
    return fetch?.call(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setup,
    TResult Function(String city)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetupWeatherEvent value) setup,
    required TResult Function(_FetchWeatherEvent value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetupWeatherEvent value)? setup,
    TResult? Function(_FetchWeatherEvent value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetupWeatherEvent value)? setup,
    TResult Function(_FetchWeatherEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchWeatherEvent extends WeatherEvent {
  const factory _FetchWeatherEvent({required final String city}) =
      _$_FetchWeatherEvent;
  const _FetchWeatherEvent._() : super._();

  String get city;
  @JsonKey(ignore: true)
  _$$_FetchWeatherEventCopyWith<_$_FetchWeatherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CityWeatherUI cityWeather) loaded,
    required TResult Function(String erorText) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CityWeatherUI cityWeather)? loaded,
    TResult? Function(String erorText)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CityWeatherUI cityWeather)? loaded,
    TResult Function(String erorText)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialWeatherState value) initial,
    required TResult Function(_LoadingWeatherState value) loading,
    required TResult Function(_LoadedWeatherState value) loaded,
    required TResult Function(_ErrorWeatherState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialWeatherState value)? initial,
    TResult? Function(_LoadingWeatherState value)? loading,
    TResult? Function(_LoadedWeatherState value)? loaded,
    TResult? Function(_ErrorWeatherState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialWeatherState value)? initial,
    TResult Function(_LoadingWeatherState value)? loading,
    TResult Function(_LoadedWeatherState value)? loaded,
    TResult Function(_ErrorWeatherState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialWeatherStateCopyWith<$Res> {
  factory _$$_InitialWeatherStateCopyWith(_$_InitialWeatherState value,
          $Res Function(_$_InitialWeatherState) then) =
      __$$_InitialWeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialWeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_InitialWeatherState>
    implements _$$_InitialWeatherStateCopyWith<$Res> {
  __$$_InitialWeatherStateCopyWithImpl(_$_InitialWeatherState _value,
      $Res Function(_$_InitialWeatherState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialWeatherState extends _InitialWeatherState {
  const _$_InitialWeatherState() : super._();

  @override
  String toString() {
    return 'WeatherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialWeatherState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CityWeatherUI cityWeather) loaded,
    required TResult Function(String erorText) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CityWeatherUI cityWeather)? loaded,
    TResult? Function(String erorText)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CityWeatherUI cityWeather)? loaded,
    TResult Function(String erorText)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialWeatherState value) initial,
    required TResult Function(_LoadingWeatherState value) loading,
    required TResult Function(_LoadedWeatherState value) loaded,
    required TResult Function(_ErrorWeatherState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialWeatherState value)? initial,
    TResult? Function(_LoadingWeatherState value)? loading,
    TResult? Function(_LoadedWeatherState value)? loaded,
    TResult? Function(_ErrorWeatherState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialWeatherState value)? initial,
    TResult Function(_LoadingWeatherState value)? loading,
    TResult Function(_LoadedWeatherState value)? loaded,
    TResult Function(_ErrorWeatherState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialWeatherState extends WeatherState {
  const factory _InitialWeatherState() = _$_InitialWeatherState;
  const _InitialWeatherState._() : super._();
}

/// @nodoc
abstract class _$$_LoadingWeatherStateCopyWith<$Res> {
  factory _$$_LoadingWeatherStateCopyWith(_$_LoadingWeatherState value,
          $Res Function(_$_LoadingWeatherState) then) =
      __$$_LoadingWeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingWeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_LoadingWeatherState>
    implements _$$_LoadingWeatherStateCopyWith<$Res> {
  __$$_LoadingWeatherStateCopyWithImpl(_$_LoadingWeatherState _value,
      $Res Function(_$_LoadingWeatherState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingWeatherState extends _LoadingWeatherState {
  const _$_LoadingWeatherState() : super._();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingWeatherState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CityWeatherUI cityWeather) loaded,
    required TResult Function(String erorText) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CityWeatherUI cityWeather)? loaded,
    TResult? Function(String erorText)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CityWeatherUI cityWeather)? loaded,
    TResult Function(String erorText)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialWeatherState value) initial,
    required TResult Function(_LoadingWeatherState value) loading,
    required TResult Function(_LoadedWeatherState value) loaded,
    required TResult Function(_ErrorWeatherState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialWeatherState value)? initial,
    TResult? Function(_LoadingWeatherState value)? loading,
    TResult? Function(_LoadedWeatherState value)? loaded,
    TResult? Function(_ErrorWeatherState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialWeatherState value)? initial,
    TResult Function(_LoadingWeatherState value)? loading,
    TResult Function(_LoadedWeatherState value)? loaded,
    TResult Function(_ErrorWeatherState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingWeatherState extends WeatherState {
  const factory _LoadingWeatherState() = _$_LoadingWeatherState;
  const _LoadingWeatherState._() : super._();
}

/// @nodoc
abstract class _$$_LoadedWeatherStateCopyWith<$Res> {
  factory _$$_LoadedWeatherStateCopyWith(_$_LoadedWeatherState value,
          $Res Function(_$_LoadedWeatherState) then) =
      __$$_LoadedWeatherStateCopyWithImpl<$Res>;
  @useResult
  $Res call({CityWeatherUI cityWeather});
}

/// @nodoc
class __$$_LoadedWeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_LoadedWeatherState>
    implements _$$_LoadedWeatherStateCopyWith<$Res> {
  __$$_LoadedWeatherStateCopyWithImpl(
      _$_LoadedWeatherState _value, $Res Function(_$_LoadedWeatherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityWeather = null,
  }) {
    return _then(_$_LoadedWeatherState(
      cityWeather: null == cityWeather
          ? _value.cityWeather
          : cityWeather // ignore: cast_nullable_to_non_nullable
              as CityWeatherUI,
    ));
  }
}

/// @nodoc

class _$_LoadedWeatherState extends _LoadedWeatherState {
  const _$_LoadedWeatherState({required this.cityWeather}) : super._();

  @override
  final CityWeatherUI cityWeather;

  @override
  String toString() {
    return 'WeatherState.loaded(cityWeather: $cityWeather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedWeatherState &&
            (identical(other.cityWeather, cityWeather) ||
                other.cityWeather == cityWeather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityWeather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedWeatherStateCopyWith<_$_LoadedWeatherState> get copyWith =>
      __$$_LoadedWeatherStateCopyWithImpl<_$_LoadedWeatherState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CityWeatherUI cityWeather) loaded,
    required TResult Function(String erorText) error,
  }) {
    return loaded(cityWeather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CityWeatherUI cityWeather)? loaded,
    TResult? Function(String erorText)? error,
  }) {
    return loaded?.call(cityWeather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CityWeatherUI cityWeather)? loaded,
    TResult Function(String erorText)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cityWeather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialWeatherState value) initial,
    required TResult Function(_LoadingWeatherState value) loading,
    required TResult Function(_LoadedWeatherState value) loaded,
    required TResult Function(_ErrorWeatherState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialWeatherState value)? initial,
    TResult? Function(_LoadingWeatherState value)? loading,
    TResult? Function(_LoadedWeatherState value)? loaded,
    TResult? Function(_ErrorWeatherState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialWeatherState value)? initial,
    TResult Function(_LoadingWeatherState value)? loading,
    TResult Function(_LoadedWeatherState value)? loaded,
    TResult Function(_ErrorWeatherState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedWeatherState extends WeatherState {
  const factory _LoadedWeatherState(
      {required final CityWeatherUI cityWeather}) = _$_LoadedWeatherState;
  const _LoadedWeatherState._() : super._();

  CityWeatherUI get cityWeather;
  @JsonKey(ignore: true)
  _$$_LoadedWeatherStateCopyWith<_$_LoadedWeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorWeatherStateCopyWith<$Res> {
  factory _$$_ErrorWeatherStateCopyWith(_$_ErrorWeatherState value,
          $Res Function(_$_ErrorWeatherState) then) =
      __$$_ErrorWeatherStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String erorText});
}

/// @nodoc
class __$$_ErrorWeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_ErrorWeatherState>
    implements _$$_ErrorWeatherStateCopyWith<$Res> {
  __$$_ErrorWeatherStateCopyWithImpl(
      _$_ErrorWeatherState _value, $Res Function(_$_ErrorWeatherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? erorText = null,
  }) {
    return _then(_$_ErrorWeatherState(
      erorText: null == erorText
          ? _value.erorText
          : erorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorWeatherState extends _ErrorWeatherState {
  const _$_ErrorWeatherState({required this.erorText}) : super._();

  @override
  final String erorText;

  @override
  String toString() {
    return 'WeatherState.error(erorText: $erorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorWeatherState &&
            (identical(other.erorText, erorText) ||
                other.erorText == erorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorWeatherStateCopyWith<_$_ErrorWeatherState> get copyWith =>
      __$$_ErrorWeatherStateCopyWithImpl<_$_ErrorWeatherState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CityWeatherUI cityWeather) loaded,
    required TResult Function(String erorText) error,
  }) {
    return error(erorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CityWeatherUI cityWeather)? loaded,
    TResult? Function(String erorText)? error,
  }) {
    return error?.call(erorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CityWeatherUI cityWeather)? loaded,
    TResult Function(String erorText)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(erorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialWeatherState value) initial,
    required TResult Function(_LoadingWeatherState value) loading,
    required TResult Function(_LoadedWeatherState value) loaded,
    required TResult Function(_ErrorWeatherState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialWeatherState value)? initial,
    TResult? Function(_LoadingWeatherState value)? loading,
    TResult? Function(_LoadedWeatherState value)? loaded,
    TResult? Function(_ErrorWeatherState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialWeatherState value)? initial,
    TResult Function(_LoadingWeatherState value)? loading,
    TResult Function(_LoadedWeatherState value)? loaded,
    TResult Function(_ErrorWeatherState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorWeatherState extends WeatherState {
  const factory _ErrorWeatherState({required final String erorText}) =
      _$_ErrorWeatherState;
  const _ErrorWeatherState._() : super._();

  String get erorText;
  @JsonKey(ignore: true)
  _$$_ErrorWeatherStateCopyWith<_$_ErrorWeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}
