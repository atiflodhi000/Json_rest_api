import 'Alternatives.dart';

class Videos {
  Videos({
      this.title, 
      this.alternatives, 
      this.type, 
      this.url,});

  Videos.fromJson(dynamic json) {
    title = json['title'];
    if (json['alternatives'] != null) {
      alternatives = [];
      json['alternatives'].forEach((v) {
        alternatives.add(Alternatives.fromJson(v));
      });
    }
    type = json['type'];
    url = json['url'];
  }
  String title;
  List<Alternatives> alternatives;
  String type;
  String url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    if (alternatives != null) {
      map['alternatives'] = alternatives.map((v) => v.toJson()).toList();
    }
    map['type'] = type;
    map['url'] = url;
    return map;
  }

}