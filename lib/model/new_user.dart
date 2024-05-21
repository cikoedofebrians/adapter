abstract interface class NewUserInterface {
  String sayFullName();
  String sayFirstName();
  bool isOnBirthday();
}

class NewUser implements NewUserInterface {
  final String fullName;
  final DateTime birthDate;
  final String gender;

  NewUser({
    required this.fullName,
    required this.birthDate,
    required this.gender,
  });

  @override
  isOnBirthday() {
    final now = DateTime.now();
    return now.month == birthDate.month && now.day == birthDate.day;
  }

  @override
  String sayFirstName() {
    return fullName.split(" ")[0];
  }

  @override
  String sayFullName() {
    return fullName;
  }
}
