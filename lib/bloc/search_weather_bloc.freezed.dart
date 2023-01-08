// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchWeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String city) fecth,
    required TResult Function() setup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String city)? fecth,
    TResult? Function()? setup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String city)? fecth,
    TResult Function()? setup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FecthSearchWeatherEvent value) fecth,
    required TResult Function(_SetupSearchWeatherEvent value) setup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FecthSearchWeatherEvent value)? fecth,
    TResult? Function(_SetupSearchWeatherEvent value)? setup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FecthSearchWeatherEvent value)? fecth,
    TResult Function(_SetupSearchWeatherEvent value)? setup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchWeatherEventCopyWith<$Res> {
  factory $SearchWeatherEventCopyWith(
          SearchWeatherEvent value, $Res Function(SearchWeatherEvent) then) =
      _$SearchWeatherEventCopyWithImpl<$Res, SearchWeatherEvent>;
}

/// @nodoc
class _$SearchWeatherEventCopyWithImpl<$Res, $Val extends SearchWeatherEvent>
    implements $SearchWeatherEventCopyWith<$Res> {
  _$SearchWeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FecthSearchWeatherEventCopyWith<$Res> {
  factory _$$_FecthSearchWeatherEventCopyWith(_$_FecthSearchWeatherEvent value,
          $Res Function(_$_FecthSearchWeatherEvent) then) =
      __$$_FecthSearchWeatherEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String city});
}

/// @nodoc
class __$$_FecthSearchWeatherEventCopyWithImpl<$Res>
    extends _$SearchWeatherEventCopyWithImpl<$Res, _$_FecthSearchWeatherEvent>
    implements _$$_FecthSearchWeatherEventCopyWith<$Res> {
  __$$_FecthSearchWeatherEventCopyWithImpl(_$_FecthSearchWeatherEvent _value,
      $Res Function(_$_FecthSearchWeatherEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
  }) {
    return _then(_$_FecthSearchWeatherEvent(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FecthSearchWeatherEvent extends _FecthSearchWeatherEvent {
  const _$_FecthSearchWeatherEvent({required this.city}) : super._();

  @override
  final String city;

  @override
  String toString() {
    return 'SearchWeatherEvent.fecth(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FecthSearchWeatherEvent &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FecthSearchWeatherEventCopyWith<_$_FecthSearchWeatherEvent>
      get copyWith =>
          __$$_FecthSearchWeatherEventCopyWithImpl<_$_FecthSearchWeatherEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String city) fecth,
    required TResult Function() setup,
  }) {
    return fecth(city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String city)? fecth,
    TResult? Function()? setup,
  }) {
    return fecth?.call(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String city)? fecth,
    TResult Function()? setup,
    required TResult orElse(),
  }) {
    if (fecth != null) {
      return fecth(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FecthSearchWeatherEvent value) fecth,
    required TResult Function(_SetupSearchWeatherEvent value) setup,
  }) {
    return fecth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FecthSearchWeatherEvent value)? fecth,
    TResult? Function(_SetupSearchWeatherEvent value)? setup,
  }) {
    return fecth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FecthSearchWeatherEvent value)? fecth,
    TResult Function(_SetupSearchWeatherEvent value)? setup,
    required TResult orElse(),
  }) {
    if (fecth != null) {
      return fecth(this);
    }
    return orElse();
  }
}

abstract class _FecthSearchWeatherEvent extends SearchWeatherEvent {
  const factory _FecthSearchWeatherEvent({required final String city}) =
      _$_FecthSearchWeatherEvent;
  const _FecthSearchWeatherEvent._() : super._();

  String get city;
  @JsonKey(ignore: true)
  _$$_FecthSearchWeatherEventCopyWith<_$_FecthSearchWeatherEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetupSearchWeatherEventCopyWith<$Res> {
  factory _$$_SetupSearchWeatherEventCopyWith(_$_SetupSearchWeatherEvent value,
          $Res Function(_$_SetupSearchWeatherEvent) then) =
      __$$_SetupSearchWeatherEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetupSearchWeatherEventCopyWithImpl<$Res>
    extends _$SearchWeatherEventCopyWithImpl<$Res, _$_SetupSearchWeatherEvent>
    implements _$$_SetupSearchWeatherEventCopyWith<$Res> {
  __$$_SetupSearchWeatherEventCopyWithImpl(_$_SetupSearchWeatherEvent _value,
      $Res Function(_$_SetupSearchWeatherEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetupSearchWeatherEvent extends _SetupSearchWeatherEvent {
  const _$_SetupSearchWeatherEvent() : super._();

  @override
  String toString() {
    return 'SearchWeatherEvent.setup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetupSearchWeatherEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String city) fecth,
    required TResult Function() setup,
  }) {
    return setup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String city)? fecth,
    TResult? Function()? setup,
  }) {
    return setup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String city)? fecth,
    TResult Function()? setup,
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
    required TResult Function(_FecthSearchWeatherEvent value) fecth,
    required TResult Function(_SetupSearchWeatherEvent value) setup,
  }) {
    return setup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FecthSearchWeatherEvent value)? fecth,
    TResult? Function(_SetupSearchWeatherEvent value)? setup,
  }) {
    return setup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FecthSearchWeatherEvent value)? fecth,
    TResult Function(_SetupSearchWeatherEvent value)? setup,
    required TResult orElse(),
  }) {
    if (setup != null) {
      return setup(this);
    }
    return orElse();
  }
}

abstract class _SetupSearchWeatherEvent extends SearchWeatherEvent {
  const factory _SetupSearchWeatherEvent() = _$_SetupSearchWeatherEvent;
  const _SetupSearchWeatherEvent._() : super._();
}

/// @nodoc
mixin _$SearchWeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String erorText) initial,
    required TResult Function(List<CityUIModel> cityList) loaded,
    required TResult Function(String erorText) error,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String erorText)? initial,
    TResult? Function(List<CityUIModel> cityList)? loaded,
    TResult? Function(String erorText)? error,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String erorText)? initial,
    TResult Function(List<CityUIModel> cityList)? loaded,
    TResult Function(String erorText)? error,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearchWeatherState value) initial,
    required TResult Function(_LoadedSearchWeatherState value) loaded,
    required TResult Function(_ErrorlSearchWeatherState value) error,
    required TResult Function(_ClearSearchWeatherState value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchWeatherState value)? initial,
    TResult? Function(_LoadedSearchWeatherState value)? loaded,
    TResult? Function(_ErrorlSearchWeatherState value)? error,
    TResult? Function(_ClearSearchWeatherState value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchWeatherState value)? initial,
    TResult Function(_LoadedSearchWeatherState value)? loaded,
    TResult Function(_ErrorlSearchWeatherState value)? error,
    TResult Function(_ClearSearchWeatherState value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchWeatherStateCopyWith<$Res> {
  factory $SearchWeatherStateCopyWith(
          SearchWeatherState value, $Res Function(SearchWeatherState) then) =
      _$SearchWeatherStateCopyWithImpl<$Res, SearchWeatherState>;
}

/// @nodoc
class _$SearchWeatherStateCopyWithImpl<$Res, $Val extends SearchWeatherState>
    implements $SearchWeatherStateCopyWith<$Res> {
  _$SearchWeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialSearchWeatherStateCopyWith<$Res> {
  factory _$$_InitialSearchWeatherStateCopyWith(
          _$_InitialSearchWeatherState value,
          $Res Function(_$_InitialSearchWeatherState) then) =
      __$$_InitialSearchWeatherStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String erorText});
}

/// @nodoc
class __$$_InitialSearchWeatherStateCopyWithImpl<$Res>
    extends _$SearchWeatherStateCopyWithImpl<$Res, _$_InitialSearchWeatherState>
    implements _$$_InitialSearchWeatherStateCopyWith<$Res> {
  __$$_InitialSearchWeatherStateCopyWithImpl(
      _$_InitialSearchWeatherState _value,
      $Res Function(_$_InitialSearchWeatherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? erorText = null,
  }) {
    return _then(_$_InitialSearchWeatherState(
      erorText: null == erorText
          ? _value.erorText
          : erorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitialSearchWeatherState extends _InitialSearchWeatherState {
  const _$_InitialSearchWeatherState({required this.erorText}) : super._();

  @override
  final String erorText;

  @override
  String toString() {
    return 'SearchWeatherState.initial(erorText: $erorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialSearchWeatherState &&
            (identical(other.erorText, erorText) ||
                other.erorText == erorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialSearchWeatherStateCopyWith<_$_InitialSearchWeatherState>
      get copyWith => __$$_InitialSearchWeatherStateCopyWithImpl<
          _$_InitialSearchWeatherState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String erorText) initial,
    required TResult Function(List<CityUIModel> cityList) loaded,
    required TResult Function(String erorText) error,
    required TResult Function() clear,
  }) {
    return initial(erorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String erorText)? initial,
    TResult? Function(List<CityUIModel> cityList)? loaded,
    TResult? Function(String erorText)? error,
    TResult? Function()? clear,
  }) {
    return initial?.call(erorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String erorText)? initial,
    TResult Function(List<CityUIModel> cityList)? loaded,
    TResult Function(String erorText)? error,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(erorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearchWeatherState value) initial,
    required TResult Function(_LoadedSearchWeatherState value) loaded,
    required TResult Function(_ErrorlSearchWeatherState value) error,
    required TResult Function(_ClearSearchWeatherState value) clear,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchWeatherState value)? initial,
    TResult? Function(_LoadedSearchWeatherState value)? loaded,
    TResult? Function(_ErrorlSearchWeatherState value)? error,
    TResult? Function(_ClearSearchWeatherState value)? clear,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchWeatherState value)? initial,
    TResult Function(_LoadedSearchWeatherState value)? loaded,
    TResult Function(_ErrorlSearchWeatherState value)? error,
    TResult Function(_ClearSearchWeatherState value)? clear,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSearchWeatherState extends SearchWeatherState {
  const factory _InitialSearchWeatherState({required final String erorText}) =
      _$_InitialSearchWeatherState;
  const _InitialSearchWeatherState._() : super._();

  String get erorText;
  @JsonKey(ignore: true)
  _$$_InitialSearchWeatherStateCopyWith<_$_InitialSearchWeatherState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedSearchWeatherStateCopyWith<$Res> {
  factory _$$_LoadedSearchWeatherStateCopyWith(
          _$_LoadedSearchWeatherState value,
          $Res Function(_$_LoadedSearchWeatherState) then) =
      __$$_LoadedSearchWeatherStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CityUIModel> cityList});
}

/// @nodoc
class __$$_LoadedSearchWeatherStateCopyWithImpl<$Res>
    extends _$SearchWeatherStateCopyWithImpl<$Res, _$_LoadedSearchWeatherState>
    implements _$$_LoadedSearchWeatherStateCopyWith<$Res> {
  __$$_LoadedSearchWeatherStateCopyWithImpl(_$_LoadedSearchWeatherState _value,
      $Res Function(_$_LoadedSearchWeatherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityList = null,
  }) {
    return _then(_$_LoadedSearchWeatherState(
      cityList: null == cityList
          ? _value._cityList
          : cityList // ignore: cast_nullable_to_non_nullable
              as List<CityUIModel>,
    ));
  }
}

/// @nodoc

class _$_LoadedSearchWeatherState extends _LoadedSearchWeatherState {
  const _$_LoadedSearchWeatherState({required final List<CityUIModel> cityList})
      : _cityList = cityList,
        super._();

  final List<CityUIModel> _cityList;
  @override
  List<CityUIModel> get cityList {
    if (_cityList is EqualUnmodifiableListView) return _cityList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cityList);
  }

  @override
  String toString() {
    return 'SearchWeatherState.loaded(cityList: $cityList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedSearchWeatherState &&
            const DeepCollectionEquality().equals(other._cityList, _cityList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cityList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedSearchWeatherStateCopyWith<_$_LoadedSearchWeatherState>
      get copyWith => __$$_LoadedSearchWeatherStateCopyWithImpl<
          _$_LoadedSearchWeatherState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String erorText) initial,
    required TResult Function(List<CityUIModel> cityList) loaded,
    required TResult Function(String erorText) error,
    required TResult Function() clear,
  }) {
    return loaded(cityList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String erorText)? initial,
    TResult? Function(List<CityUIModel> cityList)? loaded,
    TResult? Function(String erorText)? error,
    TResult? Function()? clear,
  }) {
    return loaded?.call(cityList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String erorText)? initial,
    TResult Function(List<CityUIModel> cityList)? loaded,
    TResult Function(String erorText)? error,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cityList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearchWeatherState value) initial,
    required TResult Function(_LoadedSearchWeatherState value) loaded,
    required TResult Function(_ErrorlSearchWeatherState value) error,
    required TResult Function(_ClearSearchWeatherState value) clear,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchWeatherState value)? initial,
    TResult? Function(_LoadedSearchWeatherState value)? loaded,
    TResult? Function(_ErrorlSearchWeatherState value)? error,
    TResult? Function(_ClearSearchWeatherState value)? clear,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchWeatherState value)? initial,
    TResult Function(_LoadedSearchWeatherState value)? loaded,
    TResult Function(_ErrorlSearchWeatherState value)? error,
    TResult Function(_ClearSearchWeatherState value)? clear,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedSearchWeatherState extends SearchWeatherState {
  const factory _LoadedSearchWeatherState(
          {required final List<CityUIModel> cityList}) =
      _$_LoadedSearchWeatherState;
  const _LoadedSearchWeatherState._() : super._();

  List<CityUIModel> get cityList;
  @JsonKey(ignore: true)
  _$$_LoadedSearchWeatherStateCopyWith<_$_LoadedSearchWeatherState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorlSearchWeatherStateCopyWith<$Res> {
  factory _$$_ErrorlSearchWeatherStateCopyWith(
          _$_ErrorlSearchWeatherState value,
          $Res Function(_$_ErrorlSearchWeatherState) then) =
      __$$_ErrorlSearchWeatherStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String erorText});
}

/// @nodoc
class __$$_ErrorlSearchWeatherStateCopyWithImpl<$Res>
    extends _$SearchWeatherStateCopyWithImpl<$Res, _$_ErrorlSearchWeatherState>
    implements _$$_ErrorlSearchWeatherStateCopyWith<$Res> {
  __$$_ErrorlSearchWeatherStateCopyWithImpl(_$_ErrorlSearchWeatherState _value,
      $Res Function(_$_ErrorlSearchWeatherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? erorText = null,
  }) {
    return _then(_$_ErrorlSearchWeatherState(
      erorText: null == erorText
          ? _value.erorText
          : erorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorlSearchWeatherState extends _ErrorlSearchWeatherState {
  const _$_ErrorlSearchWeatherState({required this.erorText}) : super._();

  @override
  final String erorText;

  @override
  String toString() {
    return 'SearchWeatherState.error(erorText: $erorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorlSearchWeatherState &&
            (identical(other.erorText, erorText) ||
                other.erorText == erorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorlSearchWeatherStateCopyWith<_$_ErrorlSearchWeatherState>
      get copyWith => __$$_ErrorlSearchWeatherStateCopyWithImpl<
          _$_ErrorlSearchWeatherState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String erorText) initial,
    required TResult Function(List<CityUIModel> cityList) loaded,
    required TResult Function(String erorText) error,
    required TResult Function() clear,
  }) {
    return error(erorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String erorText)? initial,
    TResult? Function(List<CityUIModel> cityList)? loaded,
    TResult? Function(String erorText)? error,
    TResult? Function()? clear,
  }) {
    return error?.call(erorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String erorText)? initial,
    TResult Function(List<CityUIModel> cityList)? loaded,
    TResult Function(String erorText)? error,
    TResult Function()? clear,
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
    required TResult Function(_InitialSearchWeatherState value) initial,
    required TResult Function(_LoadedSearchWeatherState value) loaded,
    required TResult Function(_ErrorlSearchWeatherState value) error,
    required TResult Function(_ClearSearchWeatherState value) clear,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchWeatherState value)? initial,
    TResult? Function(_LoadedSearchWeatherState value)? loaded,
    TResult? Function(_ErrorlSearchWeatherState value)? error,
    TResult? Function(_ClearSearchWeatherState value)? clear,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchWeatherState value)? initial,
    TResult Function(_LoadedSearchWeatherState value)? loaded,
    TResult Function(_ErrorlSearchWeatherState value)? error,
    TResult Function(_ClearSearchWeatherState value)? clear,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorlSearchWeatherState extends SearchWeatherState {
  const factory _ErrorlSearchWeatherState({required final String erorText}) =
      _$_ErrorlSearchWeatherState;
  const _ErrorlSearchWeatherState._() : super._();

  String get erorText;
  @JsonKey(ignore: true)
  _$$_ErrorlSearchWeatherStateCopyWith<_$_ErrorlSearchWeatherState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearSearchWeatherStateCopyWith<$Res> {
  factory _$$_ClearSearchWeatherStateCopyWith(_$_ClearSearchWeatherState value,
          $Res Function(_$_ClearSearchWeatherState) then) =
      __$$_ClearSearchWeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearSearchWeatherStateCopyWithImpl<$Res>
    extends _$SearchWeatherStateCopyWithImpl<$Res, _$_ClearSearchWeatherState>
    implements _$$_ClearSearchWeatherStateCopyWith<$Res> {
  __$$_ClearSearchWeatherStateCopyWithImpl(_$_ClearSearchWeatherState _value,
      $Res Function(_$_ClearSearchWeatherState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearSearchWeatherState extends _ClearSearchWeatherState {
  const _$_ClearSearchWeatherState() : super._();

  @override
  String toString() {
    return 'SearchWeatherState.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClearSearchWeatherState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String erorText) initial,
    required TResult Function(List<CityUIModel> cityList) loaded,
    required TResult Function(String erorText) error,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String erorText)? initial,
    TResult? Function(List<CityUIModel> cityList)? loaded,
    TResult? Function(String erorText)? error,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String erorText)? initial,
    TResult Function(List<CityUIModel> cityList)? loaded,
    TResult Function(String erorText)? error,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearchWeatherState value) initial,
    required TResult Function(_LoadedSearchWeatherState value) loaded,
    required TResult Function(_ErrorlSearchWeatherState value) error,
    required TResult Function(_ClearSearchWeatherState value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchWeatherState value)? initial,
    TResult? Function(_LoadedSearchWeatherState value)? loaded,
    TResult? Function(_ErrorlSearchWeatherState value)? error,
    TResult? Function(_ClearSearchWeatherState value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchWeatherState value)? initial,
    TResult Function(_LoadedSearchWeatherState value)? loaded,
    TResult Function(_ErrorlSearchWeatherState value)? error,
    TResult Function(_ClearSearchWeatherState value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _ClearSearchWeatherState extends SearchWeatherState {
  const factory _ClearSearchWeatherState() = _$_ClearSearchWeatherState;
  const _ClearSearchWeatherState._() : super._();
}
