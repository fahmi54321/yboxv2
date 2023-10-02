// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionRes _$TransactionResFromJson(Map<String, dynamic> json) {
  return _TransactionRes.fromJson(json);
}

/// @nodoc
mixin _$TransactionRes {
  @JsonKey(name: 'data', defaultValue: [])
  List<DataTransactionRes> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'pagination')
  PaginationRes get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionResCopyWith<TransactionRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionResCopyWith<$Res> {
  factory $TransactionResCopyWith(
          TransactionRes value, $Res Function(TransactionRes) then) =
      _$TransactionResCopyWithImpl<$Res, TransactionRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<DataTransactionRes> data,
      @JsonKey(name: 'pagination') PaginationRes pagination});

  $PaginationResCopyWith<$Res> get pagination;
}

/// @nodoc
class _$TransactionResCopyWithImpl<$Res, $Val extends TransactionRes>
    implements $TransactionResCopyWith<$Res> {
  _$TransactionResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTransactionRes>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationRes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationResCopyWith<$Res> get pagination {
    return $PaginationResCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionResCopyWith<$Res>
    implements $TransactionResCopyWith<$Res> {
  factory _$$_TransactionResCopyWith(
          _$_TransactionRes value, $Res Function(_$_TransactionRes) then) =
      __$$_TransactionResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<DataTransactionRes> data,
      @JsonKey(name: 'pagination') PaginationRes pagination});

  @override
  $PaginationResCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$_TransactionResCopyWithImpl<$Res>
    extends _$TransactionResCopyWithImpl<$Res, _$_TransactionRes>
    implements _$$_TransactionResCopyWith<$Res> {
  __$$_TransactionResCopyWithImpl(
      _$_TransactionRes _value, $Res Function(_$_TransactionRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_$_TransactionRes(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTransactionRes>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationRes,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_TransactionRes extends _TransactionRes {
  const _$_TransactionRes(
      {@JsonKey(name: 'data', defaultValue: [])
      required final List<DataTransactionRes> data,
      @JsonKey(name: 'pagination') required this.pagination})
      : _data = data,
        super._();

  factory _$_TransactionRes.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionResFromJson(json);

  final List<DataTransactionRes> _data;
  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<DataTransactionRes> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'pagination')
  final PaginationRes pagination;

  @override
  String toString() {
    return 'TransactionRes(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionRes &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionResCopyWith<_$_TransactionRes> get copyWith =>
      __$$_TransactionResCopyWithImpl<_$_TransactionRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionResToJson(
      this,
    );
  }
}

abstract class _TransactionRes extends TransactionRes {
  const factory _TransactionRes(
      {@JsonKey(name: 'data', defaultValue: [])
      required final List<DataTransactionRes> data,
      @JsonKey(name: 'pagination')
      required final PaginationRes pagination}) = _$_TransactionRes;
  const _TransactionRes._() : super._();

  factory _TransactionRes.fromJson(Map<String, dynamic> json) =
      _$_TransactionRes.fromJson;

  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<DataTransactionRes> get data;
  @override
  @JsonKey(name: 'pagination')
  PaginationRes get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionResCopyWith<_$_TransactionRes> get copyWith =>
      throw _privateConstructorUsedError;
}

DataTransactionRes _$DataTransactionResFromJson(Map<String, dynamic> json) {
  return _DataTransactionRes.fromJson(json);
}

/// @nodoc
mixin _$DataTransactionRes {
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'member', defaultValue: '')
  String get member => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_on_bank', defaultValue: '')
  String get nameOnBank => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_date', defaultValue: '')
  String get requestDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', defaultValue: 0)
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount', defaultValue: '')
  String get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataTransactionResCopyWith<DataTransactionRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTransactionResCopyWith<$Res> {
  factory $DataTransactionResCopyWith(
          DataTransactionRes value, $Res Function(DataTransactionRes) then) =
      _$DataTransactionResCopyWithImpl<$Res, DataTransactionRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'member', defaultValue: '') String member,
      @JsonKey(name: 'name_on_bank', defaultValue: '') String nameOnBank,
      @JsonKey(name: 'request_date', defaultValue: '') String requestDate,
      @JsonKey(name: 'status', defaultValue: 0) int status,
      @JsonKey(name: 'amount', defaultValue: '') String amount});
}

/// @nodoc
class _$DataTransactionResCopyWithImpl<$Res, $Val extends DataTransactionRes>
    implements $DataTransactionResCopyWith<$Res> {
  _$DataTransactionResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? member = null,
    Object? nameOnBank = null,
    Object? requestDate = null,
    Object? status = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as String,
      nameOnBank: null == nameOnBank
          ? _value.nameOnBank
          : nameOnBank // ignore: cast_nullable_to_non_nullable
              as String,
      requestDate: null == requestDate
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataTransactionResCopyWith<$Res>
    implements $DataTransactionResCopyWith<$Res> {
  factory _$$_DataTransactionResCopyWith(_$_DataTransactionRes value,
          $Res Function(_$_DataTransactionRes) then) =
      __$$_DataTransactionResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'member', defaultValue: '') String member,
      @JsonKey(name: 'name_on_bank', defaultValue: '') String nameOnBank,
      @JsonKey(name: 'request_date', defaultValue: '') String requestDate,
      @JsonKey(name: 'status', defaultValue: 0) int status,
      @JsonKey(name: 'amount', defaultValue: '') String amount});
}

/// @nodoc
class __$$_DataTransactionResCopyWithImpl<$Res>
    extends _$DataTransactionResCopyWithImpl<$Res, _$_DataTransactionRes>
    implements _$$_DataTransactionResCopyWith<$Res> {
  __$$_DataTransactionResCopyWithImpl(
      _$_DataTransactionRes _value, $Res Function(_$_DataTransactionRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? member = null,
    Object? nameOnBank = null,
    Object? requestDate = null,
    Object? status = null,
    Object? amount = null,
  }) {
    return _then(_$_DataTransactionRes(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as String,
      nameOnBank: null == nameOnBank
          ? _value.nameOnBank
          : nameOnBank // ignore: cast_nullable_to_non_nullable
              as String,
      requestDate: null == requestDate
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_DataTransactionRes extends _DataTransactionRes {
  const _$_DataTransactionRes(
      {@JsonKey(name: 'id', defaultValue: '') required this.id,
      @JsonKey(name: 'member', defaultValue: '') required this.member,
      @JsonKey(name: 'name_on_bank', defaultValue: '') required this.nameOnBank,
      @JsonKey(name: 'request_date', defaultValue: '')
      required this.requestDate,
      @JsonKey(name: 'status', defaultValue: 0) required this.status,
      @JsonKey(name: 'amount', defaultValue: '') required this.amount})
      : super._();

  factory _$_DataTransactionRes.fromJson(Map<String, dynamic> json) =>
      _$$_DataTransactionResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'member', defaultValue: '')
  final String member;
  @override
  @JsonKey(name: 'name_on_bank', defaultValue: '')
  final String nameOnBank;
  @override
  @JsonKey(name: 'request_date', defaultValue: '')
  final String requestDate;
  @override
  @JsonKey(name: 'status', defaultValue: 0)
  final int status;
  @override
  @JsonKey(name: 'amount', defaultValue: '')
  final String amount;

  @override
  String toString() {
    return 'DataTransactionRes(id: $id, member: $member, nameOnBank: $nameOnBank, requestDate: $requestDate, status: $status, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataTransactionRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.member, member) || other.member == member) &&
            (identical(other.nameOnBank, nameOnBank) ||
                other.nameOnBank == nameOnBank) &&
            (identical(other.requestDate, requestDate) ||
                other.requestDate == requestDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, member, nameOnBank, requestDate, status, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataTransactionResCopyWith<_$_DataTransactionRes> get copyWith =>
      __$$_DataTransactionResCopyWithImpl<_$_DataTransactionRes>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataTransactionResToJson(
      this,
    );
  }
}

abstract class _DataTransactionRes extends DataTransactionRes {
  const factory _DataTransactionRes(
      {@JsonKey(name: 'id', defaultValue: '') required final String id,
      @JsonKey(name: 'member', defaultValue: '') required final String member,
      @JsonKey(name: 'name_on_bank', defaultValue: '')
      required final String nameOnBank,
      @JsonKey(name: 'request_date', defaultValue: '')
      required final String requestDate,
      @JsonKey(name: 'status', defaultValue: 0) required final int status,
      @JsonKey(name: 'amount', defaultValue: '')
      required final String amount}) = _$_DataTransactionRes;
  const _DataTransactionRes._() : super._();

  factory _DataTransactionRes.fromJson(Map<String, dynamic> json) =
      _$_DataTransactionRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'member', defaultValue: '')
  String get member;
  @override
  @JsonKey(name: 'name_on_bank', defaultValue: '')
  String get nameOnBank;
  @override
  @JsonKey(name: 'request_date', defaultValue: '')
  String get requestDate;
  @override
  @JsonKey(name: 'status', defaultValue: 0)
  int get status;
  @override
  @JsonKey(name: 'amount', defaultValue: '')
  String get amount;
  @override
  @JsonKey(ignore: true)
  _$$_DataTransactionResCopyWith<_$_DataTransactionRes> get copyWith =>
      throw _privateConstructorUsedError;
}
