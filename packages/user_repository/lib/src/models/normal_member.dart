import 'package:meta/meta.dart';
import 'models.dart';
import '../entities/entities.dart';

@immutable
class NormalMember extends User {
  NormalMember(
    String email,
    String lastName,
    int lastThree,
    String rank, {
    String phoneNumber = '',
    MemberStatus status = MemberStatus.active,
    String id,
  }) : super(
          email,
          lastName,
          lastThree,
          rank,
          phoneNumber: phoneNumber,
          status: status,
          id: id,
        );

  NormalMember copyWith({
    String id,
    String email,
    String phoneNumber,
    String lastName,
    int lastThree,
    String rank,
    MemberStatus status,
  }) {
    return NormalMember(
      email ?? this.email,
      lastName ?? this.lastName,
      lastThree ?? this.lastThree,
      rank ?? this.rank,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      status: status ?? this.status,
      id: id ?? this.id,
    );
  }

  @override
  int get hashCode =>
      id.hashCode ^
      email.hashCode ^
      phoneNumber.hashCode ^
      lastName.hashCode ^
      lastThree.hashCode ^
      rank.hashCode ^
      status.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User && runtimeType == other.runtimeType;

  UserEntity toEntity() {
    return UserEntity(
      id,
      email,
      phoneNumber,
      lastName,
      lastThree,
      rank,
      status,
      accountType: AccountType.normal,
    );
  }

  static NormalMember fromEntity(UserEntity entity) {
    return NormalMember(
      entity.email,
      entity.lastName,
      entity.lastThree,
      entity.rank,
      phoneNumber: entity.phoneNumber,
      status: entity.status,
      id: entity.id,
    );
  }
}
