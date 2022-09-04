import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:demo_trips_app/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc {
  final authRepository = AuthRepository();

  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase;

  //Use cases
  //1. SignIn con Google
  Future<UserCredential> signIn() {
    return authRepository.signInFirebase();
  }

  signOut() {
    authRepository.signOut();
  }

  @override
  void dispose() {}
}
