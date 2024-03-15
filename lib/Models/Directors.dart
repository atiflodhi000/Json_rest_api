class Directors {
  Directors({
      this.name,});

  Directors.fromJson(dynamic json) {
    name = json['name'];
  }
  String name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

}