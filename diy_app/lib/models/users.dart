class Users {
  int? id;
  String? name;
  String? address;
  String? email;
  Users(
      {required this.id,
      required this.name,
      required this.address,
      required this.email});

  Users.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    address = json["address"];
    email = json["email"];
  }
}
