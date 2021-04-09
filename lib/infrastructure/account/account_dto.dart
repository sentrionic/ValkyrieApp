import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/account/account.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';

part 'account_dto.freezed.dart';

@freezed
class AccountDto with _$AccountDto {
  const AccountDto._();

  const factory AccountDto({
    required String id,
    required String username,
    required String email,
    required String image,
  }) = _AccountDto;

  Account toDomain() {
    return Account(
      id: id,
      username: Username(username),
      email: EmailAddress(email),
      image: image,
    );
  }

  factory AccountDto.fromDomain(Account account) {
    return AccountDto(
      id: account.id,
      username: account.username.getOrCrash(),
      email: account.email.getOrCrash(),
      image: account.image,
    );
  }

  factory AccountDto.fromMap(Map<String, dynamic> map) {
    return AccountDto(
      id: map['id'],
      username: map['username'],
      email: map['email'],
      image: map['image'],
    );
  }
}
