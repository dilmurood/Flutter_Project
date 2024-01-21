class Users {
    final String? email;
    final String? phone;
    final String username;
    final String password;
    final String address;

    Users({
        this.email,
        this.phone,
        required this.username,
        required this.password,
        required this.address,
    });

    factory Users.fromMap(Map<String, dynamic> json) => Users(
        email: json["email"],
        username: json["username"],
        password: json["password"],
        phone: json["phone"],
        address: json["address"],
    );

    Map<String, dynamic> toMap() => {
        "email": email,
        "username": username,
        "password": password,
        "phone": phone,
        "address": address,
    };
}
