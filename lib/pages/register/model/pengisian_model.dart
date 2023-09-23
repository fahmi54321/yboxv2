// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class DataPengisian extends Equatable {
  String namaLengkap;
  String email;
  String kataSandi;
  DataPengisian({
    required this.namaLengkap,
    required this.email,
    required this.kataSandi,
  });

  DataPengisian copyWith({
    String? namaLengkap,
    String? email,
    String? kataSandi,
  }) {
    return DataPengisian(
      namaLengkap: namaLengkap ?? this.namaLengkap,
      email: email ?? this.email,
      kataSandi: kataSandi ?? this.kataSandi,
    );
  }

  @override
  List<Object> get props => [namaLengkap, email, kataSandi];

  @override
  bool get stringify => true;
}
