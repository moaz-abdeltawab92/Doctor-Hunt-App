// ignore: file_names
class AuthentactionRequestModel {
  String? name;
  String? email;
  int? phoneNumber;
  int? gender;
  String? password;
  String? passwordConfirmation;

  AuthentactionRequestModel(
      {required this.name,
      required this.email,
      required this.phoneNumber,
      required this.gender,
      required this.password,
      required this.passwordConfirmation});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'phone': phoneNumber,
      'gender': gender,
      'password': password,
      'password_confirmation': passwordConfirmation,
    };
  }
}
