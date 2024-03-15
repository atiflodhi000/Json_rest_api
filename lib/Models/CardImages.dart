class CardImages {
  CardImages({
      this.url, 
      this.h, 
      this.w,});

  CardImages.fromJson(dynamic json) {
    url = json['url'];
    h = json['h'];
    w = json['w'];
  }
  String url;
  int h;
  int w;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['h'] = h;
    map['w'] = w;
    return map;
  }

}