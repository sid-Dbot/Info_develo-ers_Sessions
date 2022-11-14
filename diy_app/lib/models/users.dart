class Users {
  int? id;
  String? name;
  String? address;
  String? email;
  Users({this.id, this.name, this.address, this.email});

  Users.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    address = json["address"];
    email = json["email"];
  }
}
