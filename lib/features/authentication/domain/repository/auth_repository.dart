// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:vempraquadra/features/authentication/domain/entityes/user_entity.dart';

class AuthRepository {
  final firebase_auth.FirebaseAuth _firebaseAuth;
  AuthRepository({
    firebase_auth.FirebaseAuth? firebaseAuth,
  }) : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance;

  var currentUser = User.epmty;

  Stream<User> get user {
    return _firebaseAuth.authStateChanges().map((firebaseUSer) {
      final user = firebaseUSer == null ? User.epmty : firebaseUSer.toUSer;
      currentUser = user;
      return user;
    });
  }

  Future<void> singup({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (_) {}
  }

  Future<void> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (_) {}
  }

  Future<void> logOut() async {
    try {
      await Future.wait([_firebaseAuth.signOut()]);
    } catch (_) {}
  }
}

extension on firebase_auth.User {
  User get toUSer {
    return User(
      id: uid,
      email: email,
      name: displayName,
      photo: photoURL,
    );
  }
}
