import 'dart:async';
import './blocs/Validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);
  Stream<bool> get submitValid => Observable.combineLatest2(
      email, password, (emailProvided, passwordProvided) => true);

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  submit() {
    final validEmail = _emailController.value;
    final validPassword = _emailController.value;

    print('Email $validEmail Password $validPassword');
  }

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

final bloc = Bloc();
