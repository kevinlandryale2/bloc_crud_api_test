// To parse this JSON data, do
//
//     final hotel = hotelFromJson(jsonString);

import 'dart:convert';

List<Hotel> hotelFromJson(String str) => List<Hotel>.from(json.decode(str).map((x) => Hotel.fromJson(x)));

String hotelToJson(List<Hotel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Hotel {
  Hotel({
    this.id,
    this.name,
    this.ville,
    this.quartier,
    this.prix,
    this.description,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
    this.imagepres,
    this.imagedetail,
  });

  int id;
  String name;
  String ville;
  String quartier;
  String prix;
  String description;
  DateTime publishedAt;
  DateTime createdAt;
  DateTime updatedAt;
  Image imagepres;
  List<Image> imagedetail;

  factory Hotel.fromJson(Map<String, dynamic> json) => Hotel(
    id: json["id"],
    name: json["Name"],
    ville: json["ville"],
    quartier: json["Quartier"],
    prix: json["prix"],
    description: json["description"],
    publishedAt: DateTime.parse(json["published_at"]),
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    imagepres: Image.fromJson(json["imagepres"]),
    imagedetail: List<Image>.from(json["imagedetail"].map((x) => Image.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "Name": name,
    "ville": ville,
    "Quartier": quartier,
    "prix": prix,
    "description": description,
    "published_at": publishedAt.toIso8601String(),
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "imagepres": imagepres.toJson(),
    "imagedetail": List<dynamic>.from(imagedetail.map((x) => x.toJson())),
  };
}

class Image {
  Image({
    this.id,
    this.name,
    this.alternativeText,
    this.hash,
    this.ext,
    this.url,
    this.previewUrl,
    this.provider,
    this.providerMetadata,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String name;
  String alternativeText;
  String hash;
  String ext;
  String url;
  dynamic previewUrl;
  String provider;
  dynamic providerMetadata;
  DateTime createdAt;
  DateTime updatedAt;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    name: json["name"],
    alternativeText: json["alternativeText"],
    hash: json["hash"],
    ext: json["ext"],
    url: json["url"],
    previewUrl: json["previewUrl"],
    provider: json["provider"] == null ? null : json["provider"],
    providerMetadata: json["provider_metadata"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "alternativeText": alternativeText,
    "hash": hash,
    "ext": ext,
    "url": url,
    "previewUrl": previewUrl,
    "provider": provider == null ? null : provider,
    "provider_metadata": providerMetadata,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
