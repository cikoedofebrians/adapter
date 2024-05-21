import 'package:adapter/model/new_user.dart';
import 'package:adapter/model/old_user.dart';
import 'package:adapter/user_data.dart';
import 'package:intl/intl.dart';

class UserService {
  static OldUser getOldUser() => OldUser(
        name: oldUserData['name'],
        birthDate: oldUserData["birth_date"],
        gender: oldUserData["gender"],
      );

  static NewUser getNewUser() => NewUser(
        fullName: newUserData['full_name'],
        birthDate: DateFormat('dd-MM-yyyy').parse(newUserData["birth_date"]),
        gender: newUserData["gender"],
      );
}
