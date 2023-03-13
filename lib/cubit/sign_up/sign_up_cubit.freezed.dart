// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpState {
  bool get errorFirstname => throw _privateConstructorUsedError;
  bool get errorLastname => throw _privateConstructorUsedError;
  bool get errorPhone => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {bool errorFirstname,
      bool errorLastname,
      bool errorPhone,
      bool loading,
      String phone,
      String lastname,
      String firstname});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorFirstname = null,
    Object? errorLastname = null,
    Object? errorPhone = null,
    Object? loading = null,
    Object? phone = null,
    Object? lastname = null,
    Object? firstname = null,
  }) {
    return _then(_value.copyWith(
      errorFirstname: null == errorFirstname
          ? _value.errorFirstname
          : errorFirstname // ignore: cast_nullable_to_non_nullable
              as bool,
      errorLastname: null == errorLastname
          ? _value.errorLastname
          : errorLastname // ignore: cast_nullable_to_non_nullable
              as bool,
      errorPhone: null == errorPhone
          ? _value.errorPhone
          : errorPhone // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_SignUpStateCopyWith(
          _$_SignUpState value, $Res Function(_$_SignUpState) then) =
      __$$_SignUpStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool errorFirstname,
      bool errorLastname,
      bool errorPhone,
      bool loading,
      String phone,
      String lastname,
      String firstname});
}

/// @nodoc
class __$$_SignUpStateCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_SignUpState>
    implements _$$_SignUpStateCopyWith<$Res> {
  __$$_SignUpStateCopyWithImpl(
      _$_SignUpState _value, $Res Function(_$_SignUpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorFirstname = null,
    Object? errorLastname = null,
    Object? errorPhone = null,
    Object? loading = null,
    Object? phone = null,
    Object? lastname = null,
    Object? firstname = null,
  }) {
    return _then(_$_SignUpState(
      errorFirstname: null == errorFirstname
          ? _value.errorFirstname
          : errorFirstname // ignore: cast_nullable_to_non_nullable
              as bool,
      errorLastname: null == errorLastname
          ? _value.errorLastname
          : errorLastname // ignore: cast_nullable_to_non_nullable
              as bool,
      errorPhone: null == errorPhone
          ? _value.errorPhone
          : errorPhone // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
      {this.errorFirstname = false,
      this.errorLastname = false,
      this.errorPhone = false,
      this.loading = false,
      this.phone = "",
      this.lastname = "",
      this.firstname = ""});

  @override
  @JsonKey()
  final bool errorFirstname;
  @override
  @JsonKey()
  final bool errorLastname;
  @override
  @JsonKey()
  final bool errorPhone;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String lastname;
  @override
  @JsonKey()
  final String firstname;

  @override
  String toString() {
    return 'SignUpState(errorFirstname: $errorFirstname, errorLastname: $errorLastname, errorPhone: $errorPhone, loading: $loading, phone: $phone, lastname: $lastname, firstname: $firstname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpState &&
            (identical(other.errorFirstname, errorFirstname) ||
                other.errorFirstname == errorFirstname) &&
            (identical(other.errorLastname, errorLastname) ||
                other.errorLastname == errorLastname) &&
            (identical(other.errorPhone, errorPhone) ||
                other.errorPhone == errorPhone) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorFirstname, errorLastname,
      errorPhone, loading, phone, lastname, firstname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      __$$_SignUpStateCopyWithImpl<_$_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {final bool errorFirstname,
      final bool errorLastname,
      final bool errorPhone,
      final bool loading,
      final String phone,
      final String lastname,
      final String firstname}) = _$_SignUpState;

  @override
  bool get errorFirstname;
  @override
  bool get errorLastname;
  @override
  bool get errorPhone;
  @override
  bool get loading;
  @override
  String get phone;
  @override
  String get lastname;
  @override
  String get firstname;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
