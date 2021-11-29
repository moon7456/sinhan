import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SinhanFirebaseUser {
  SinhanFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

SinhanFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SinhanFirebaseUser> sinhanFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<SinhanFirebaseUser>((user) => currentUser = SinhanFirebaseUser(user));
