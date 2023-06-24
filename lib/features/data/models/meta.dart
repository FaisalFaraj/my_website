
class Meta {
  List<Services>? services;
  List<Contacts>? contacts;
  String? profile;

  Meta({this.services, this.contacts, this.profile});

  Meta.fromJson(Map<String, dynamic> json) {
    if(json["services"] is List) {
      services = json["services"] == null ? null : (json["services"] as List).map((e) => Services.fromJson(e)).toList();
    }
    if(json["contacts"] is List) {
      contacts = json["contacts"] == null ? null : (json["contacts"] as List).map((e) => Contacts.fromJson(e)).toList();
    }
    if(json["profile"] is String) {
      profile = json["profile"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(services != null) {
      _data["services"] = services?.map((e) => e.toJson()).toList();
    }
    if(contacts != null) {
      _data["contacts"] = contacts?.map((e) => e.toJson()).toList();
    }
    _data["profile"] = profile;
    return _data;
  }
}

class Contacts {
  String? url;
  String? icon;

  Contacts({this.url, this.icon});

  Contacts.fromJson(Map<String, dynamic> json) {
    if(json["url"] is String) {
      url = json["url"];
    }
    if(json["icon"] is String) {
      icon = json["icon"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    _data["icon"] = icon;
    return _data;
  }
}

class Services {
  String? name;
  String? icon;
  String? description;
  List<String>? tool;

  Services({this.name, this.icon, this.description, this.tool});

  Services.fromJson(Map<String, dynamic> json) {
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["icon"] is String) {
      icon = json["icon"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["tool"] is List) {
      tool = json["tool"] == null ? null : List<String>.from(json["tool"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["icon"] = icon;
    _data["description"] = description;
    if(tool != null) {
      _data["tool"] = tool;
    }
    return _data;
  }
}