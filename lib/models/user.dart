import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? id, userName, email;
  UserModel({this.id, this.userName, this.email});
  factory UserModel.fromMap(DocumentSnapshot map) {
    return UserModel(
        id: map.id, userName: map['username'], email: map['email']);
  }

  Map<String, dynamic> toMap() {
    return {"email": email, "userName": userName};
  }
}
