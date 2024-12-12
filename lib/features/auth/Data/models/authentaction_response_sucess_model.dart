class AuthentactionResponseSucessModel {
  String? message;
  bool? status;
  int? code;
  DataModel? data;
  AuthentactionResponseSucessModel(
      {this.message, this.status, this.code, this.data});

  factory AuthentactionResponseSucessModel.fromJson(Map<String, dynamic> json) {
    return AuthentactionResponseSucessModel(
      message: json['message'],
      status: json['status'],
      code: json['code'],
      data: DataModel.fromJson(json['data']),
    );
  }
}

class DataModel {
  String? token;
  String? username;

  DataModel({this.token, this.username});
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      token: json['token'],
      username: json['username'],
    );
  }
}
