import 'parents/model.dart';

class User extends Model {
  String? name;
  String? email;
  String? password;
  // Media avatar;
  String? apiToken;
  String? deviceToken;
  String? phoneNumber;
  bool? verifiedPhone;
  String? verificationId;
  String? address;
  String? bio;

  String? type;
  String? zip;
  String? loction;
  String? des_addres;
  String? city;

  bool? auth=false;

  String? gender;

  //Media avatar=Media();

  User(
      {this.name,
      this.email,
      this.password,
      this.apiToken,
      this.deviceToken,
      this.phoneNumber,
      this.verifiedPhone=false,
      this.verificationId,
      this.address,
      this.bio,
      this.type,
      this.zip,
      this.des_addres,
      this.city,
      this.loction,
      this.gender = "0"});

  User.fromJson(Map<String, dynamic> json) {
    name = stringFromJson(json, 'name');
    email = stringFromJson(json, 'email');
    apiToken = stringFromJson(json, 'api_token');
    deviceToken = stringFromJson(json, 'device_token');
    phoneNumber = stringFromJson(json, 'phone_number');
    verifiedPhone = boolFromJson(json, 'phone_verified_at');
   // avatar = mediaFromJson(json, 'img');
    auth = boolFromJson(json, 'auth');
    try {
      address = json['custom_fields']['address']['view'];
    } catch (e) {
      address = stringFromJson(json, 'address');
    }
    try {
      bio = json['custom_fields']['bio']['view'];
    } catch (e) {
      bio = stringFromJson(json, 'bio');
    }
    super.fromJson(json);
  }
  User.fromJson2(Map<String, dynamic> json) {
    name = stringFromJson(json, 'name');
    id = stringFromJson(json, 'id');
    email = stringFromJson(json, 'email');
    zip = stringFromJson(json, 'zip');
    // apiToken = stringFromJson(json, 'api_token');
    deviceToken = stringFromJson(json, 'token');
    password = stringFromJson(json, 'password');
    phoneNumber = stringFromJson(json, 'phone');
    type = stringFromJson(json, 'type');
    loction = stringFromJson(json, 'loction');
    des_addres = stringFromJson(json, 'des_addres');
    city = stringFromJson(json, 'city');
    gender = stringFromJson(json, 'gender');
   // avatar.id = stringFromJson(json, 'img');
    auth = boolFromJson(json, 'auth');
    //
    try {
      auth = stringFromJson(json, 'name').length > 0 ? true : false;
    } catch (e) {
      auth = false;
    }
    // try {
    //   bio = json['custom_fields']['bio']['view'];
    // } catch (e) {
    //   bio = stringFromJson(json, 'bio');
    // }
    super.fromJson(json);
  }
  Map<String, dynamic> toJson2() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['token'] = deviceToken;
    data['img'] =
    //    (this.avatar.hasData) ? this.avatar.id : "1024px-User-avatar.svg.png";
    data['name'] = name;
    data["phone"] = phoneNumber;
    data['email'] = email;
    data["des_addres"] = des_addres;
    data['password'] = password;
    data['auth'] = auth ?? false;
    return data;
  }

  Map<String, dynamic> toJson4() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data["password"] = password;
    data["token"] = deviceToken;
    data["des_addres"] = des_addres;
    data["city"] = city;
    data["addres"] = address;
    data["zip"] = zip;
    data["phone"] = "+967" + phoneNumber!;
    data["emil"] = email;
    data["gender"] = gender;
    return data;
  }

  Map<String, dynamic> toJson3() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    // data['id'] = this.id;
    data['token'] = deviceToken;
    data['name'] = email;
    data['password'] = password;
    return data;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    if (password != null && password != '') {
      data['password'] = password;
    }
    data['api_token'] = apiToken;
    if (deviceToken != null) {
      data["device_token"] = deviceToken;
    }
    data["phone_number"] = phoneNumber;
    if (verifiedPhone != null ) {
      data["phone_verified_at"] = DateTime.now().toLocal().toString();
    }
    data["address"] = address;
    data["bio"] = bio;
    // if (this.avatar != null && Uuid.isUuid(avatar.id)) {
    //   data['avatar'] = this.avatar.id;
    // }
    // if (avatar != null) {
    //   data["media"] = [avatar.toJson()];
    // }
    data['auth'] = auth;
    return data;
  }

  Map toRestrictMap() {
    var map = new Map<String, dynamic>();
    map["id"] = id;
    map["email"] = email;
    map["name"] = name;
    // map["thumb"] = avatar.thumb;
    map["device_token"] = deviceToken;
    return map;
  }

  // @override
  // bool operator ==(Object other) =>
  //     super == other &&
  //     other is User &&
  //     runtimeType == other.runtimeType &&
  //     name == other.name &&
  //     email == other.email &&
  //     password == other.password &&
  //     // avatar == other.avatar &&
  //     apiToken == other.apiToken &&
  //     deviceToken == other.deviceToken &&
  //     phoneNumber == other.phoneNumber &&
  //     verifiedPhone == other.verifiedPhone &&
  //     verificationId == other.verificationId &&
  //     address == other.address &&
  //     bio == other.bio &&
  //     auth == other.auth;

  @override
  int get hashCode =>
      super.hashCode ^
      name.hashCode ^
      email.hashCode ^
      password.hashCode ^
      // avatar.hashCode ^
      apiToken.hashCode ^
      deviceToken.hashCode ^
      phoneNumber.hashCode ^
      verifiedPhone.hashCode ^
      verificationId.hashCode ^
      address.hashCode ^
      bio.hashCode ^
      auth.hashCode;
}
