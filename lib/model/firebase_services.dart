import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/user_model.dart';

class FirebaseServices {
  FirebaseFirestore _fireStoreDataBase = FirebaseFirestore.instance;
  

 //recieve the data
 
  Stream<List<UserModel>> getUserList() {
    return _fireStoreDataBase.collection('users')
        .snapshots()
        .map((snapShot) => snapShot.docs
        .map((document) => UserModel.fromMap(document.data))
        .toList());
  }

}