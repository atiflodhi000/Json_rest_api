class Alternatives {
  Alternatives({
      this.quality, 
      this.url,});

  Alternatives.fromJson(dynamic json) {
    quality = json['quality'];
    url = json['url'];
  }
  String quality;
  String url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['quality'] = quality;
    map['url'] = url;
    return map;
  }

}