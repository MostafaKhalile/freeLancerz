import 'dart:convert';

class User {
  final String userName;
  final String accessToken;
  final String tokenType;
  User({
    required this.userName,
    required this.accessToken,
    required this.tokenType,
  });

  User copyWith({
    String? userName,
    String? accessToken,
    String? tokenType,
  }) {
    return User(
      userName: userName ?? this.userName,
      accessToken: accessToken ?? this.accessToken,
      tokenType: tokenType ?? this.tokenType,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'user_name': userName,
      'access_token': accessToken,
      'token_type': tokenType,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userName: map['user_name'] ?? '',
      accessToken: map['access_token'] ?? '',
      tokenType: map['token_type'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() =>
      'User(userName: $userName, accessToken: $accessToken, tokenType: $tokenType)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.userName == userName &&
        other.accessToken == accessToken &&
        other.tokenType == tokenType;
  }

  @override
  int get hashCode =>
      userName.hashCode ^ accessToken.hashCode ^ tokenType.hashCode;
}
