import 'ViewingWindow.dart';
import 'CardImages.dart';
import 'Directors.dart';
import 'KeyArtImages.dart';
import 'Cast.dart';
import 'Videos.dart';

class Secondf {
  Secondf({
      this.skyGoUrl, 
      this.url, 
      this.reviewAuthor, 
      this.id, 
      this.cert, 
      this.viewingWindow, 
      this.headline, 
      this.cardImages, 
      this.directors, 
      this.sum, 
      this.keyArtImages, 
      this.synopsis, 
      this.body, 
      this.cast, 
      this.skyGoId, 
      this.year, 
      this.duration, 
      this.rating, 
      this.class, 
      this.videos, 
      this.lastUpdated, 
      this.genres, 
      this.quote,});

  Secondf.fromJson(dynamic json) {
    skyGoUrl = json['skyGoUrl'];
    url = json['url'];
    reviewAuthor = json['reviewAuthor'];
    id = json['id'];
    cert = json['cert'];
    viewingWindow = json['viewingWindow'] != null ? ViewingWindow.fromJson(json['viewingWindow']) : null;
    headline = json['headline'];
    if (json['cardImages'] != null) {
      cardImages = [];
      json['cardImages'].forEach((v) {
        cardImages.add(CardImages.fromJson(v));
      });
    }
    if (json['directors'] != null) {
      directors = [];
      json['directors'].forEach((v) {
        directors.add(Directors.fromJson(v));
      });
    }
    sum = json['sum'];
    if (json['keyArtImages'] != null) {
      keyArtImages = [];
      json['keyArtImages'].forEach((v) {
        keyArtImages.add(KeyArtImages.fromJson(v));
      });
    }
    synopsis = json['synopsis'];
    body = json['body'];
    if (json['cast'] != null) {
      cast = [];
      json['cast'].forEach((v) {
        cast.add(Cast.fromJson(v));
      });
    }
    skyGoId = json['skyGoId'];
    year = json['year'];
    duration = json['duration'];
    rating = json['rating'];
    class = json['class'];
    if (json['videos'] != null) {
      videos = [];
      json['videos'].forEach((v) {
        videos.add(Videos.fromJson(v));
      });
    }
    lastUpdated = json['lastUpdated'];
    genres = json['genres'] != null ? json['genres'].cast<String>() : [];
    quote = json['quote'];
  }
  String skyGoUrl;
  String url;
  String reviewAuthor;
  String id;
  String cert;
  ViewingWindow viewingWindow;
  String headline;
  List<CardImages> cardImages;
  List<Directors> directors;
  String sum;
  List<KeyArtImages> keyArtImages;
  String synopsis;
  String body;
  List<Cast> cast;
  String skyGoId;
  String year;
  int duration;
  int rating;
  String class;
  List<Videos> videos;
  String lastUpdated;
  List<String> genres;
  String quote;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['skyGoUrl'] = skyGoUrl;
    map['url'] = url;
    map['reviewAuthor'] = reviewAuthor;
    map['id'] = id;
    map['cert'] = cert;
    if (viewingWindow != null) {
      map['viewingWindow'] = viewingWindow.toJson();
    }
    map['headline'] = headline;
    if (cardImages != null) {
      map['cardImages'] = cardImages.map((v) => v.toJson()).toList();
    }
    if (directors != null) {
      map['directors'] = directors.map((v) => v.toJson()).toList();
    }
    map['sum'] = sum;
    if (keyArtImages != null) {
      map['keyArtImages'] = keyArtImages.map((v) => v.toJson()).toList();
    }
    map['synopsis'] = synopsis;
    map['body'] = body;
    if (cast != null) {
      map['cast'] = cast.map((v) => v.toJson()).toList();
    }
    map['skyGoId'] = skyGoId;
    map['year'] = year;
    map['duration'] = duration;
    map['rating'] = rating;
    map['class'] = class;
    if (videos != null) {
      map['videos'] = videos.map((v) => v.toJson()).toList();
    }
    map['lastUpdated'] = lastUpdated;
    map['genres'] = genres;
    map['quote'] = quote;
    return map;
  }

}