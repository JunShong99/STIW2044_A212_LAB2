// ignore_for_file: unnecessary_this, unnecessary_new, prefer_collection_literals

class Client {
  String? userId;
  String? email;
  String? name;
  String? number;
  String? password;
  String? address;

  Client(
      {this.userId,
      this.email,
      this.name,
      this.number,
      this.password,
      this.address});

  Client.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    email = json['email'];
    name = json['name'];
    number = json['number'];
    password = json['password'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['email'] = this.email;
    data['name'] = this.name;
    data['number'] = this.number;
    data['password'] = this.password;
    data['address'] = this.address;
    return data;
  }
}