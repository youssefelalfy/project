/// code : 200
/// message : "done"
/// data : {"id":177,"first_name":"ahmed","last_name":"elshora","name":"ahmed elshora","email":"yossefelalfy@gmail.com","image":"http://alcaptin.com/dashboard/images/profile_default.png","phone":null,"active":null,"sms_code":"Jxqo","date_of_birth":"28","gender":"male","access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hbGNhcHRpbi5jb21cL2FwaVwvcmVnaXN0ZXIiLCJpYXQiOjE2NjM5NTIwNTEsIm5iZiI6MTY2Mzk1MjA1MSwianRpIjoiUTF2RjdtVldaWTRqcWZyaiIsInN1YiI6MTc3LCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.eZLq9iuGHkzIW_5xMkY2j2nld2Ov6hGwy7xN1j3vkhk"}

class SignupResponse {
  SignupResponse({
      num? code, 
      String? message, 
      Data? data,}){
    _code = code;
    _message = message;
    _data = data;
}

  SignupResponse.fromJson(dynamic json) {
    _code = json['code'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num? _code;
  String? _message;
  Data? _data;
SignupResponse copyWith({  num? code,
  String? message,
  Data? data,
}) => SignupResponse(  code: code ?? _code,
  message: message ?? _message,
  data: data ?? _data,
);
  num? get code => _code;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// id : 177
/// first_name : "ahmed"
/// last_name : "elshora"
/// name : "ahmed elshora"
/// email : "yossefelalfy@gmail.com"
/// image : "http://alcaptin.com/dashboard/images/profile_default.png"
/// phone : null
/// active : null
/// sms_code : "Jxqo"
/// date_of_birth : "28"
/// gender : "male"
/// access_token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hbGNhcHRpbi5jb21cL2FwaVwvcmVnaXN0ZXIiLCJpYXQiOjE2NjM5NTIwNTEsIm5iZiI6MTY2Mzk1MjA1MSwianRpIjoiUTF2RjdtVldaWTRqcWZyaiIsInN1YiI6MTc3LCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.eZLq9iuGHkzIW_5xMkY2j2nld2Ov6hGwy7xN1j3vkhk"

class Data {
  Data({
      num? id, 
      String? firstName, 
      String? lastName, 
      String? name, 
      String? email, 
      String? image, 
      dynamic phone, 
      dynamic active, 
      String? smsCode, 
      String? dateOfBirth, 
      String? gender, 
      String? accessToken,}){
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _name = name;
    _email = email;
    _image = image;
    _phone = phone;
    _active = active;
    _smsCode = smsCode;
    _dateOfBirth = dateOfBirth;
    _gender = gender;
    _accessToken = accessToken;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _name = json['name'];
    _email = json['email'];
    _image = json['image'];
    _phone = json['phone'];
    _active = json['active'];
    _smsCode = json['sms_code'];
    _dateOfBirth = json['date_of_birth'];
    _gender = json['gender'];
    _accessToken = json['access_token'];
  }
  num? _id;
  String? _firstName;
  String? _lastName;
  String? _name;
  String? _email;
  String? _image;
  dynamic _phone;
  dynamic _active;
  String? _smsCode;
  String? _dateOfBirth;
  String? _gender;
  String? _accessToken;
Data copyWith({  num? id,
  String? firstName,
  String? lastName,
  String? name,
  String? email,
  String? image,
  dynamic phone,
  dynamic active,
  String? smsCode,
  String? dateOfBirth,
  String? gender,
  String? accessToken,
}) => Data(  id: id ?? _id,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  name: name ?? _name,
  email: email ?? _email,
  image: image ?? _image,
  phone: phone ?? _phone,
  active: active ?? _active,
  smsCode: smsCode ?? _smsCode,
  dateOfBirth: dateOfBirth ?? _dateOfBirth,
  gender: gender ?? _gender,
  accessToken: accessToken ?? _accessToken,
);
  num? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get name => _name;
  String? get email => _email;
  String? get image => _image;
  dynamic get phone => _phone;
  dynamic get active => _active;
  String? get smsCode => _smsCode;
  String? get dateOfBirth => _dateOfBirth;
  String? get gender => _gender;
  String? get accessToken => _accessToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['name'] = _name;
    map['email'] = _email;
    map['image'] = _image;
    map['phone'] = _phone;
    map['active'] = _active;
    map['sms_code'] = _smsCode;
    map['date_of_birth'] = _dateOfBirth;
    map['gender'] = _gender;
    map['access_token'] = _accessToken;
    return map;
  }

}