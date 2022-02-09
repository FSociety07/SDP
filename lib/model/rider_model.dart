class RiderModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;
  String? role;

  RiderModel(
      {this.uid, this.email, this.firstName, this.secondName, this.role});

  //receiving data from server
  factory RiderModel.fromMap(map) {
    return RiderModel(
        uid: map['uid'],
        email: map['email'],
        firstName: map['firstName'],
        secondName: map['secondName'],
        role: map['role']);
  }

  //sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': secondName,
      'role': role
    };
  }
}
