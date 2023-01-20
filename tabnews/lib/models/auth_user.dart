import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class AuthUser {
  final String id;
  final String token;
  final DateTime expiresAt;
  final DateTime createdAt;
  final DateTime updatedAt;

  AuthUser({
    required this.id,
    required this.token,
    required this.expiresAt,
    required this.createdAt,
    required this.updatedAt,
  });

  AuthUser copyWith({
    String? id,
    String? token,
    DateTime? expiresAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return AuthUser(
      id: id ?? this.id,
      token: token ?? this.token,
      expiresAt: expiresAt ?? this.expiresAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  bool operator ==(covariant AuthUser other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.token == token &&
        other.expiresAt == expiresAt &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        token.hashCode ^
        expiresAt.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'token': token,
      'expiresAt': expiresAt.millisecondsSinceEpoch,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt.millisecondsSinceEpoch,
    };
  }

  factory AuthUser.fromMap(Map<String, dynamic> map) {
    return AuthUser(
      id: map['id'] as String,
      token: map['token'] as String,
      expiresAt: DateTime.fromMillisecondsSinceEpoch(map['expiresAt'] as int),
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthUser.fromJson(String source) =>
      AuthUser.fromMap(json.decode(source) as Map<String, dynamic>);
}
