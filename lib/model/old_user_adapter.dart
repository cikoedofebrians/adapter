import 'package:adapter/model/new_user.dart';
import 'package:adapter/model/old_user.dart';
import 'package:intl/intl.dart';

class OldUserAdapter implements NewUserInterface {
  final OldUser oldUser;
  OldUserAdapter({
    required this.oldUser,
  });

  @override
  bool isOnBirthday() {
    final birthDate = DateFormat('dd-MM-yyyy').parse(oldUser.birthDate);
    final now = DateTime.now();
    return now.month == birthDate.month && now.day == birthDate.day;
  }

  @override
  sayFirstName() {
    return oldUser.name;
  }

  @override
  sayFullName() {
    return oldUser.name;
  }
}
