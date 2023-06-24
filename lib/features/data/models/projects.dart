
class Projects {
  List<Mobile>? mobile;
  List<Web>? web;
  List<Desktop>? desktop;
  List<UiUx>? uiUx;

  Projects({this.mobile, this.web, this.desktop, this.uiUx});

  Projects.fromJson(Map<String, dynamic> json) {
    if(json["mobile"] is List) {
      mobile = json["mobile"] == null ? null : (json["mobile"] as List).map((e) => Mobile.fromJson(e)).toList();
    }
    if(json["web"] is List) {
      web = json["web"] == null ? null : (json["web"] as List).map((e) => Web.fromJson(e)).toList();
    }
    if(json["Desktop"] is List) {
      desktop = json["Desktop"] == null ? null : (json["Desktop"] as List).map((e) => Desktop.fromJson(e)).toList();
    }
    if(json["UI_UX"] is List) {
      uiUx = json["UI_UX"] == null ? null : (json["UI_UX"] as List).map((e) => UiUx.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(mobile != null) {
      _data["mobile"] = mobile?.map((e) => e.toJson()).toList();
    }
    if(web != null) {
      _data["web"] = web?.map((e) => e.toJson()).toList();
    }
    if(desktop != null) {
      _data["Desktop"] = desktop?.map((e) => e.toJson()).toList();
    }
    if(uiUx != null) {
      _data["UI_UX"] = uiUx?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class UiUx {
  String? banners;
  String? icons;
  String? titles;
  String? description;
  String? links;

  UiUx({this.banners, this.icons, this.titles, this.description, this.links});

  UiUx.fromJson(Map<String, dynamic> json) {
    if(json["banners"] is String) {
      banners = json["banners"];
    }
    if(json["icons"] is String) {
      icons = json["icons"];
    }
    if(json["titles"] is String) {
      titles = json["titles"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["links"] is String) {
      links = json["links"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["banners"] = banners;
    _data["icons"] = icons;
    _data["titles"] = titles;
    _data["description"] = description;
    _data["links"] = links;
    return _data;
  }
}

class Desktop {
  String? banners;
  String? icons;
  String? titles;
  String? description;
  String? links;

  Desktop({this.banners, this.icons, this.titles, this.description, this.links});

  Desktop.fromJson(Map<String, dynamic> json) {
    if(json["banners"] is String) {
      banners = json["banners"];
    }
    if(json["icons"] is String) {
      icons = json["icons"];
    }
    if(json["titles"] is String) {
      titles = json["titles"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["links"] is String) {
      links = json["links"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["banners"] = banners;
    _data["icons"] = icons;
    _data["titles"] = titles;
    _data["description"] = description;
    _data["links"] = links;
    return _data;
  }
}

class Web {
  String? banners;
  String? icons;
  String? titles;
  String? description;
  String? links;

  Web({this.banners, this.icons, this.titles, this.description, this.links});

  Web.fromJson(Map<String, dynamic> json) {
    if(json["banners"] is String) {
      banners = json["banners"];
    }
    if(json["icons"] is String) {
      icons = json["icons"];
    }
    if(json["titles"] is String) {
      titles = json["titles"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["links"] is String) {
      links = json["links"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["banners"] = banners;
    _data["icons"] = icons;
    _data["titles"] = titles;
    _data["description"] = description;
    _data["links"] = links;
    return _data;
  }
}

class Mobile {
  String? banners;
  String? icons;
  String? titles;
  String? description;
  String? links;

  Mobile({this.banners, this.icons, this.titles, this.description, this.links});

  Mobile.fromJson(Map<String, dynamic> json) {
    if(json["banners"] is String) {
      banners = json["banners"];
    }
    if(json["icons"] is String) {
      icons = json["icons"];
    }
    if(json["titles"] is String) {
      titles = json["titles"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["links"] is String) {
      links = json["links"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["banners"] = banners;
    _data["icons"] = icons;
    _data["titles"] = titles;
    _data["description"] = description;
    _data["links"] = links;
    return _data;
  }
}