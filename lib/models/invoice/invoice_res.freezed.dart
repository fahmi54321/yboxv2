// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvoiceRes _$InvoiceResFromJson(Map<String, dynamic> json) {
  return _InvoiceRes.fromJson(json);
}

/// @nodoc
mixin _$InvoiceRes {
  @JsonKey(name: 'label_image', defaultValue: '')
  String get labelImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'label_name', defaultValue: '')
  String get labelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'inv_no', defaultValue: 0)
  int get invNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method', defaultValue: '')
  String get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_name', defaultValue: '')
  String get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email', defaultValue: '')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank', defaultValue: '')
  String get bank => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_on_bank', defaultValue: '')
  String get nameOnBank => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_rek', defaultValue: '')
  String get noRek => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_date', defaultValue: '')
  String get invoiceDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_create', defaultValue: '')
  String get invoiceCreate => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount', defaultValue: '')
  String get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceResCopyWith<InvoiceRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceResCopyWith<$Res> {
  factory $InvoiceResCopyWith(
          InvoiceRes value, $Res Function(InvoiceRes) then) =
      _$InvoiceResCopyWithImpl<$Res, InvoiceRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'label_image', defaultValue: '') String labelImage,
      @JsonKey(name: 'label_name', defaultValue: '') String labelName,
      @JsonKey(name: 'inv_no', defaultValue: 0) int invNo,
      @JsonKey(name: 'payment_method', defaultValue: '') String paymentMethod,
      @JsonKey(name: 'account_name', defaultValue: '') String accountName,
      @JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'bank', defaultValue: '') String bank,
      @JsonKey(name: 'name_on_bank', defaultValue: '') String nameOnBank,
      @JsonKey(name: 'no_rek', defaultValue: '') String noRek,
      @JsonKey(name: 'invoice_date', defaultValue: '') String invoiceDate,
      @JsonKey(name: 'invoice_create', defaultValue: '') String invoiceCreate,
      @JsonKey(name: 'amount', defaultValue: '') String amount,
      @JsonKey(name: 'id', defaultValue: '') String id});
}

/// @nodoc
class _$InvoiceResCopyWithImpl<$Res, $Val extends InvoiceRes>
    implements $InvoiceResCopyWith<$Res> {
  _$InvoiceResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelImage = null,
    Object? labelName = null,
    Object? invNo = null,
    Object? paymentMethod = null,
    Object? accountName = null,
    Object? email = null,
    Object? bank = null,
    Object? nameOnBank = null,
    Object? noRek = null,
    Object? invoiceDate = null,
    Object? invoiceCreate = null,
    Object? amount = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      labelImage: null == labelImage
          ? _value.labelImage
          : labelImage // ignore: cast_nullable_to_non_nullable
              as String,
      labelName: null == labelName
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as String,
      invNo: null == invNo
          ? _value.invNo
          : invNo // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bank: null == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String,
      nameOnBank: null == nameOnBank
          ? _value.nameOnBank
          : nameOnBank // ignore: cast_nullable_to_non_nullable
              as String,
      noRek: null == noRek
          ? _value.noRek
          : noRek // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceDate: null == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceCreate: null == invoiceCreate
          ? _value.invoiceCreate
          : invoiceCreate // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvoiceResCopyWith<$Res>
    implements $InvoiceResCopyWith<$Res> {
  factory _$$_InvoiceResCopyWith(
          _$_InvoiceRes value, $Res Function(_$_InvoiceRes) then) =
      __$$_InvoiceResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'label_image', defaultValue: '') String labelImage,
      @JsonKey(name: 'label_name', defaultValue: '') String labelName,
      @JsonKey(name: 'inv_no', defaultValue: 0) int invNo,
      @JsonKey(name: 'payment_method', defaultValue: '') String paymentMethod,
      @JsonKey(name: 'account_name', defaultValue: '') String accountName,
      @JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'bank', defaultValue: '') String bank,
      @JsonKey(name: 'name_on_bank', defaultValue: '') String nameOnBank,
      @JsonKey(name: 'no_rek', defaultValue: '') String noRek,
      @JsonKey(name: 'invoice_date', defaultValue: '') String invoiceDate,
      @JsonKey(name: 'invoice_create', defaultValue: '') String invoiceCreate,
      @JsonKey(name: 'amount', defaultValue: '') String amount,
      @JsonKey(name: 'id', defaultValue: '') String id});
}

/// @nodoc
class __$$_InvoiceResCopyWithImpl<$Res>
    extends _$InvoiceResCopyWithImpl<$Res, _$_InvoiceRes>
    implements _$$_InvoiceResCopyWith<$Res> {
  __$$_InvoiceResCopyWithImpl(
      _$_InvoiceRes _value, $Res Function(_$_InvoiceRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelImage = null,
    Object? labelName = null,
    Object? invNo = null,
    Object? paymentMethod = null,
    Object? accountName = null,
    Object? email = null,
    Object? bank = null,
    Object? nameOnBank = null,
    Object? noRek = null,
    Object? invoiceDate = null,
    Object? invoiceCreate = null,
    Object? amount = null,
    Object? id = null,
  }) {
    return _then(_$_InvoiceRes(
      labelImage: null == labelImage
          ? _value.labelImage
          : labelImage // ignore: cast_nullable_to_non_nullable
              as String,
      labelName: null == labelName
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as String,
      invNo: null == invNo
          ? _value.invNo
          : invNo // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bank: null == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String,
      nameOnBank: null == nameOnBank
          ? _value.nameOnBank
          : nameOnBank // ignore: cast_nullable_to_non_nullable
              as String,
      noRek: null == noRek
          ? _value.noRek
          : noRek // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceDate: null == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceCreate: null == invoiceCreate
          ? _value.invoiceCreate
          : invoiceCreate // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_InvoiceRes extends _InvoiceRes {
  const _$_InvoiceRes(
      {@JsonKey(name: 'label_image', defaultValue: '') required this.labelImage,
      @JsonKey(name: 'label_name', defaultValue: '') required this.labelName,
      @JsonKey(name: 'inv_no', defaultValue: 0) required this.invNo,
      @JsonKey(name: 'payment_method', defaultValue: '')
      required this.paymentMethod,
      @JsonKey(name: 'account_name', defaultValue: '')
      required this.accountName,
      @JsonKey(name: 'email', defaultValue: '') required this.email,
      @JsonKey(name: 'bank', defaultValue: '') required this.bank,
      @JsonKey(name: 'name_on_bank', defaultValue: '') required this.nameOnBank,
      @JsonKey(name: 'no_rek', defaultValue: '') required this.noRek,
      @JsonKey(name: 'invoice_date', defaultValue: '')
      required this.invoiceDate,
      @JsonKey(name: 'invoice_create', defaultValue: '')
      required this.invoiceCreate,
      @JsonKey(name: 'amount', defaultValue: '') required this.amount,
      @JsonKey(name: 'id', defaultValue: '') required this.id})
      : super._();

  factory _$_InvoiceRes.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceResFromJson(json);

  @override
  @JsonKey(name: 'label_image', defaultValue: '')
  final String labelImage;
  @override
  @JsonKey(name: 'label_name', defaultValue: '')
  final String labelName;
  @override
  @JsonKey(name: 'inv_no', defaultValue: 0)
  final int invNo;
  @override
  @JsonKey(name: 'payment_method', defaultValue: '')
  final String paymentMethod;
  @override
  @JsonKey(name: 'account_name', defaultValue: '')
  final String accountName;
  @override
  @JsonKey(name: 'email', defaultValue: '')
  final String email;
  @override
  @JsonKey(name: 'bank', defaultValue: '')
  final String bank;
  @override
  @JsonKey(name: 'name_on_bank', defaultValue: '')
  final String nameOnBank;
  @override
  @JsonKey(name: 'no_rek', defaultValue: '')
  final String noRek;
  @override
  @JsonKey(name: 'invoice_date', defaultValue: '')
  final String invoiceDate;
  @override
  @JsonKey(name: 'invoice_create', defaultValue: '')
  final String invoiceCreate;
  @override
  @JsonKey(name: 'amount', defaultValue: '')
  final String amount;
  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;

  @override
  String toString() {
    return 'InvoiceRes(labelImage: $labelImage, labelName: $labelName, invNo: $invNo, paymentMethod: $paymentMethod, accountName: $accountName, email: $email, bank: $bank, nameOnBank: $nameOnBank, noRek: $noRek, invoiceDate: $invoiceDate, invoiceCreate: $invoiceCreate, amount: $amount, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceRes &&
            (identical(other.labelImage, labelImage) ||
                other.labelImage == labelImage) &&
            (identical(other.labelName, labelName) ||
                other.labelName == labelName) &&
            (identical(other.invNo, invNo) || other.invNo == invNo) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.nameOnBank, nameOnBank) ||
                other.nameOnBank == nameOnBank) &&
            (identical(other.noRek, noRek) || other.noRek == noRek) &&
            (identical(other.invoiceDate, invoiceDate) ||
                other.invoiceDate == invoiceDate) &&
            (identical(other.invoiceCreate, invoiceCreate) ||
                other.invoiceCreate == invoiceCreate) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      labelImage,
      labelName,
      invNo,
      paymentMethod,
      accountName,
      email,
      bank,
      nameOnBank,
      noRek,
      invoiceDate,
      invoiceCreate,
      amount,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceResCopyWith<_$_InvoiceRes> get copyWith =>
      __$$_InvoiceResCopyWithImpl<_$_InvoiceRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceResToJson(
      this,
    );
  }
}

abstract class _InvoiceRes extends InvoiceRes {
  const factory _InvoiceRes(
      {@JsonKey(name: 'label_image', defaultValue: '')
      required final String labelImage,
      @JsonKey(name: 'label_name', defaultValue: '')
      required final String labelName,
      @JsonKey(name: 'inv_no', defaultValue: 0) required final int invNo,
      @JsonKey(name: 'payment_method', defaultValue: '')
      required final String paymentMethod,
      @JsonKey(name: 'account_name', defaultValue: '')
      required final String accountName,
      @JsonKey(name: 'email', defaultValue: '') required final String email,
      @JsonKey(name: 'bank', defaultValue: '') required final String bank,
      @JsonKey(name: 'name_on_bank', defaultValue: '')
      required final String nameOnBank,
      @JsonKey(name: 'no_rek', defaultValue: '') required final String noRek,
      @JsonKey(name: 'invoice_date', defaultValue: '')
      required final String invoiceDate,
      @JsonKey(name: 'invoice_create', defaultValue: '')
      required final String invoiceCreate,
      @JsonKey(name: 'amount', defaultValue: '') required final String amount,
      @JsonKey(name: 'id', defaultValue: '')
      required final String id}) = _$_InvoiceRes;
  const _InvoiceRes._() : super._();

  factory _InvoiceRes.fromJson(Map<String, dynamic> json) =
      _$_InvoiceRes.fromJson;

  @override
  @JsonKey(name: 'label_image', defaultValue: '')
  String get labelImage;
  @override
  @JsonKey(name: 'label_name', defaultValue: '')
  String get labelName;
  @override
  @JsonKey(name: 'inv_no', defaultValue: 0)
  int get invNo;
  @override
  @JsonKey(name: 'payment_method', defaultValue: '')
  String get paymentMethod;
  @override
  @JsonKey(name: 'account_name', defaultValue: '')
  String get accountName;
  @override
  @JsonKey(name: 'email', defaultValue: '')
  String get email;
  @override
  @JsonKey(name: 'bank', defaultValue: '')
  String get bank;
  @override
  @JsonKey(name: 'name_on_bank', defaultValue: '')
  String get nameOnBank;
  @override
  @JsonKey(name: 'no_rek', defaultValue: '')
  String get noRek;
  @override
  @JsonKey(name: 'invoice_date', defaultValue: '')
  String get invoiceDate;
  @override
  @JsonKey(name: 'invoice_create', defaultValue: '')
  String get invoiceCreate;
  @override
  @JsonKey(name: 'amount', defaultValue: '')
  String get amount;
  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceResCopyWith<_$_InvoiceRes> get copyWith =>
      throw _privateConstructorUsedError;
}
