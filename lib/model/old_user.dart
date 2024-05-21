import 'dart:developer';

abstract interface class OldUserInterface {
  const OldUserInterface();

  sayName();
}

class OldUser implements OldUserInterface {
  final String name;
  final String birthDate;
  final String gender;

  OldUser({
    required this.name,
    required this.birthDate,
    required this.gender,
  });

  @override
  sayName() {
    log(name);
  }
}
