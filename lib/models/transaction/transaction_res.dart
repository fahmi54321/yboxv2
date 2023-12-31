import 'package:yboxv2/models/general/pagination_res.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_res.g.dart';

part 'transaction_res.freezed.dart';

@freezed
class TransactionRes with _$TransactionRes {
  const TransactionRes._();

  @JsonSerializable(
      anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
  const factory TransactionRes({
    @JsonKey(name: 'data', defaultValue: [])
    required List<DataTransactionRes> data,
    @JsonKey(
      name: 'pagination',
    )
    required PaginationRes pagination,
  }) = _TransactionRes;

  factory TransactionRes.fromJson(Map<String, dynamic> json) =>
      _$TransactionResFromJson(json);
}

@freezed
class DataTransactionRes with _$DataTransactionRes {
  const DataTransactionRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory DataTransactionRes({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'name_on_bank', defaultValue: '') required String nameOnBank,
    @JsonKey(name: 'created_date', defaultValue: '')
    required String createdDate,
    @JsonKey(name: 'status', defaultValue: 0) required int status,
    @JsonKey(name: 'amount', defaultValue: '') required String amount,
  }) = _DataTransactionRes;

  factory DataTransactionRes.fromJson(Map<String, dynamic> json) =>
      _$DataTransactionResFromJson(json);
}
