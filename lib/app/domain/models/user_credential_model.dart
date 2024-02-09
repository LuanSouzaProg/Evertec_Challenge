import 'dart:convert';

class UserCredentialModel {
  String? type;
  String? number;
  String? password;
  UserCredentialModel({
    this.type,
    this.number,
    this.password,
  });

  UserCredentialModel copyWith({
    String? type,
    String? number,
    String? password,
  }) {
    return UserCredentialModel(
      type: type ?? this.type,
      number: number ?? this.number,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'number': number,
      'password': password,
    };
  }

  factory UserCredentialModel.fromMap(Map<String, dynamic> map) {
    return UserCredentialModel(
      type: map['type'] != null ? map['type'] as String : null,
      number: map['number'] != null ? map['number'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserCredentialModel.fromJson(String source) =>
      UserCredentialModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'UserCredentialModel(type: $type, number: $number, password: $password)';

  @override
  bool operator ==(covariant UserCredentialModel other) {
    if (identical(this, other)) return true;

    return other.type == type &&
        other.number == number &&
        other.password == password;
  }

  @override
  int get hashCode => type.hashCode ^ number.hashCode ^ password.hashCode;
}
