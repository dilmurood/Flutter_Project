import 'dart:convert';
class Users {
    final int? userId;
    final String? email;
    final String? phone;
    final String username;
    final String password;

    Users({
        this.userId,
        this.email,
        this.phone,
        required this.username,
        required this.password,
    });

    // factory Users.fromRawJson(String str) => Users.fromMap(json.decode(str));

    // String toRawJson() => json.encode(toMap());

    factory Users.fromMap(Map<String, dynamic> json) => Users(
        userId: json["userId"],
        email: json["email"],
        username: json["username"],
        password: json["password"],
        phone: json["phone"],
    );

    Map<String, dynamic> toMap() => {
        "userId": userId,
        "email": email,
        "username": username,
        "password": password,
        "phone": phone,
    };
}
