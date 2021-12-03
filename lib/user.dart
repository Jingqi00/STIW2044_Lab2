class User {
  String? username;
  String? name;
  String? phoneno;
  String? email;
  String? password;
 
  User(
      {
      required this.username, 
      required this.name,
      required this.phoneno,
      required this.email,
      required this.password,});

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    name = json['name'];
    phoneno = json['phoneno'];
    email = json['email'];
    password = json['password'];
  }
}
