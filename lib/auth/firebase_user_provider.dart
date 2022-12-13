import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class QuizAppFirebaseUser {
  QuizAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

QuizAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<QuizAppFirebaseUser> quizAppFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<QuizAppFirebaseUser>(
      (user) {
        currentUser = QuizAppFirebaseUser(user);
        return currentUser!;
      },
    );
