class ErrorModel {
  String? message;
  bool? status;
  int? code;
  DataModel? data;

  ErrorModel({this.message, this.status, this.code, this.data});
  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      message: json['message'],
      status: json['status'],
      code: json['code'],
      data: json['data'] != null ? DataModel.fromJson(json['data']) : null,
    );
  }
}

class DataModel {
  String? name;
  String? email;
  String? phone;
  String? gender;
  String? password;
  String? passwordConfirmation;

  DataModel(
      {this.email,
      this.phone,
      this.password,
      this.passwordConfirmation,
      this.name,
      this.gender});
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      password: json['password'],
      passwordConfirmation: json['password_confirmation'],
      email: json['email'],
      phone: json['phone'],
      name: json['name'],
      gender: json['gender'],
    );
  }
}
