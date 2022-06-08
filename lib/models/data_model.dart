// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Posts> fetchData() async {
  final response = await http
      .get(Uri.parse('https://dev.api.spotlas.com/interview/feed?page=1'));
  final jsonresponse = json.decode(response.body);

  return Posts.fromJson(jsonresponse);
}

class Posts {
  List<Post>? posts;

  Posts({
    required this.posts,
  });

  Posts.fromJson(List<dynamic> json) {
    posts = json.map((e) => Post.fromJson(e)).toList();
  }
}

class Post {
  Post({
    required this.caption,
    required this.media,
    required this.author,
    required this.spot,
    required this.tags,
  });

  Caption caption;
  List<Media> media;
  Author author;
  Spot spot;
  List<PostTag> tags;

  factory Post.fromJson(Map<String, dynamic> json) {
    var caption = Caption.fromJson(json['caption']);
    var media = <Media>[];

    if (json['media'] != null) {
      json['media'].forEach((v) {
        media.add(Media.fromJson(v));
      });
    }
    var author = json["author"] != null
        ? Author.fromJson(json["author"])
        : Author(
            id: "",
            username: "",
            photoUrl: "",
            fullName: "",
            isPrivate: false,
            isVerified: false);

    var spot = Spot.fromJson(json['spot']);
    var tags = <PostTag>[];

    if (json['tags'] != null) {
      json['tags'].forEach((v) {
        tags.add(PostTag.fromJson(v));
      });
    }
    return Post(
        caption: caption, media: media, author: author, spot: spot, tags: tags);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['caption'] = caption.toJson();
    data['media'] = media.map((v) => v.toJson()).toList();
    data['author'] = author.toJson();
    data['spot'] = spot.toJson();

    data['tags'] = tags.map((v) => v.toJson()).toList();
    return data;
  }
}

// caption of post information
class Caption {
  Caption({
    required this.text,
  });

  String text;

  factory Caption.fromJson(Map<String, dynamic> json) => Caption(
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
      };
}

//uwner post information
class Author {
  Author({
    required this.id,
    required this.username,
    required this.photoUrl,
    required this.fullName,
    required this.isPrivate,
    required this.isVerified,
  });

  String id;
  String username;
  String photoUrl;
  String fullName;
  bool isPrivate;
  bool isVerified;

  factory Author.fromJson(Map<String, dynamic> json) => Author(
        id: json["id"],
        username: json["username"],
        photoUrl: json["photo_url"],
        fullName: json["full_name"],
        isPrivate: json["is_private"],
        isVerified: json["is_verified"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "photo_url": photoUrl,
        "full_name": fullName,
        "is_private": isPrivate,
        "is_verified": isVerified,
      };
}

// restaurant information
class Spot {
  Spot({
    required this.id,
    required this.name,
    required this.types,
    required this.logo,
    required this.location,
    required this.isSaved,
  });

  String id;
  String name;
  List<TypeElement> types;
  Media logo;
  Location location;
  bool isSaved;

  factory Spot.fromJson(Map<String, dynamic> json) => Spot(
        id: json["id"],
        name: json["name"],
        types: List<TypeElement>.from(
            json["types"].map((x) => TypeElement.fromJson(x))),
        logo: Media.fromJson(json["logo"]),
        location: Location.fromJson(json["location"]),
        isSaved: json["is_saved"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "types": List<dynamic>.from(types.map((x) => x.toJson())),
        "logo": logo.toJson(),
        "location": location.toJson(),
        "is_saved": isSaved,
      };
}

//location information
class Location {
  Location({
    required this.latitude,
    required this.longitude,
    required this.display,
  });

  double latitude;
  double longitude;
  String display;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        display: json["display"],
      );

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
        "display": display,
      };
}

//carousel media information
class Media {
  Media({required this.url});

  String url;

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}

// type of Spot (Bar, Restaurant etc.)
class TypeElement {
  TypeElement({
    required this.id,
    required this.name,
    required this.url,
  });

  int id;
  String name;
  String url;

  factory TypeElement.fromJson(Map<String, dynamic> json) => TypeElement(
        id: json["id"],
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "url": url,
      };
}

class PostTag {
  PostTag({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory PostTag.fromJson(Map<String, dynamic> json) => PostTag(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
