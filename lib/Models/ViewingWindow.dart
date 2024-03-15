class ViewingWindow {
  ViewingWindow({
      this.startDate,
      this.wayToWatch,
      this.endDate,});

  ViewingWindow.fromJson(dynamic json) {
    startDate = json['startDate'];
    wayToWatch = json['wayToWatch'];
    endDate = json['endDate'];
  }
  String startDate;
  String wayToWatch;
  String endDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['startDate'] = startDate;
    map['wayToWatch'] = wayToWatch;
    map['endDate'] = endDate;
    return map;
  }

}