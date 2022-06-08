// // To parse this JSON data, do
// //
// //     final posts = postsFromJson(jsonString);

// import 'dart:convert';

// List<Posts2> postsFromJson(String str) =>
//     List<Posts2>.from(json.decode(str).map((x) => Posts2.fromJson(x)));

// String postsToJson(List<Posts2> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Posts2 {
//   Posts2({
//     required this.id,
//     required this.caption,
//     required this.media,
//     required this.createdAt,
//     required this.author,
//     required this.spot,
//     required this.relevantComments,
//     required this.numberOfComments,
//     required this.likedBy,
//     required this.numberOfLikes,
//     required this.tags,
//   });

//   String id;
//   Caption caption;
//   List<Media> media;
//   DateTime createdAt;
//   Author author;
//   Spot spot;
//   dynamic relevantComments;
//   int numberOfComments;
//   List<Author> likedBy;
//   int numberOfLikes;
//   List<PostTag> tags;

//   factory Posts2.fromJson(Map<String, dynamic> json) => Posts2(
//         id: json["id"],
//         caption: Caption.fromJson(json["caption"]),
//         media: List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
//         createdAt: DateTime.parse(json["created_at"]),
//         author: Author.fromJson(json["author"]),
//         spot: Spot.fromJson(json["spot"]),
//         relevantComments: json["relevant_comments"],
//         numberOfComments: json["number_of_comments"],
//         likedBy:
//             List<Author>.from(json["liked_by"].map((x) => Author.fromJson(x))),
//         numberOfLikes: json["number_of_likes"],
//         tags: List<PostTag>.from(json["tags"].map((x) => PostTag.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id == null ? null : id,
//         "caption": caption == null ? null : caption.toJson(),
//         "media": media == null
//             ? null
//             : List<dynamic>.from(media.map((x) => x.toJson())),
//         "created_at": createdAt == null ? null : createdAt.toIso8601String(),
//         "author": author == null ? null : author.toJson(),
//         "spot": spot == null ? null : spot.toJson(),
//         "relevant_comments": relevantComments,
//         "number_of_comments":
//             numberOfComments == null ? null : numberOfComments,
//         "liked_by": likedBy == null
//             ? null
//             : List<dynamic>.from(likedBy.map((x) => x.toJson())),
//         "number_of_likes": numberOfLikes == null ? null : numberOfLikes,
//         "tags": tags == null
//             ? null
//             : List<dynamic>.from(tags.map((x) => x.toJson())),
//       };
// }

// class Author {
//   Author({
//     required this.id,
//     required this.username,
//     required this.photoUrl,
//     required this.fullName,
//     required this.isPrivate,
//     required this.isVerified,
//   });

//   String id;
//   String username;
//   String photoUrl;
//   String fullName;
//   bool isPrivate;
//   bool isVerified;

//   factory Author.fromJson(Map<String, dynamic> json) => Author(
//         id: json["id"] == null ? null : json["id"],
//         username: json["username"] == null ? null : json["username"],
//         photoUrl: json["photo_url"] == null ? null : json["photo_url"],
//         fullName: json["full_name"] == null ? null : json["full_name"],
//         isPrivate: json["is_private"] == null ? null : json["is_private"],
//         isVerified: json["is_verified"] == null ? null : json["is_verified"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id == null ? null : id,
//         "username": username == null ? null : username,
//         "photo_url": photoUrl == null ? null : photoUrl,
//         "full_name": fullName == null ? null : fullName,
//         "is_private": isPrivate == null ? null : isPrivate,
//         "is_verified": isVerified == null ? null : isVerified,
//       };
// }

// class Caption {
//   Caption({
//     required this.text,
//     required this.tags,
//   });

//   String text;
//   List<CaptionTag> tags;

//   factory Caption.fromJson(Map<String, dynamic> json) => Caption(
//         text: json["text"],
//         tags: List<CaptionTag>.from(
//             json["tags"].map((x) => CaptionTag.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "text": text == null ? null : text,
//         "tags": tags == null
//             ? null
//             : List<dynamic>.from(tags.map((x) => x.toJson())),
//       };
// }

// class CaptionTag {
//   CaptionTag({
//     required this.id,
//     required this.tagText,
//     required this.displayText,
//     required this.url,
//     required this.type,
//   });

//   String id;
//   String tagText;
//   String displayText;
//   String url;
//   String type;

//   factory CaptionTag.fromJson(Map<String, dynamic> json) => CaptionTag(
//         id: json["id"],
//         tagText: json["tag_text"],
//         displayText: json["display_text"],
//         url: json["url"],
//         type: json["type"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "tag_text": tagText,
//         "display_text": displayText,
//         "url": url,
//         "type": type,
//       };
// }

// class Media {
//   Media({
//     required this.url,
//   });

//   String url;

//   factory Media.fromJson(Map<String, dynamic> json) => Media(
//         url: json["url"],
//       );

//   Map<String, dynamic> toJson() => {
//         "url": url,
//       };
// }

// enum TypeEnum { IMAGE }

// class Spot {
//   Spot({
//     required this.id,
//     required this.name,
//     required this.types,
//     required this.logo,
//     required this.location,
//     required this.isSaved,
//   });

//   String id;
//   String name;
//   List<TypeElement> types;
//   Media logo;
//   Location location;
//   bool isSaved;

//   factory Spot.fromJson(Map<String, dynamic> json) => Spot(
//         id: json["id"],
//         name: json["name"],
//         types: List<TypeElement>.from(
//             json["types"].map((x) => TypeElement.fromJson(x))),
//         logo: Media.fromJson(json["logo"]),
//         location: Location.fromJson(json["location"]),
//         isSaved: json["is_saved"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "types": List<dynamic>.from(types.map((x) => x.toJson())),
//         "logo": logo.toJson(),
//         "location": location.toJson(),
//         "is_saved": isSaved,
//       };
// }

// class Location {
//   Location({
//     required this.latitude,
//     required this.longitude,
//     required this.display,
//   });

//   double latitude;
//   double longitude;
//   String display;

//   factory Location.fromJson(Map<String, dynamic> json) => Location(
//         latitude: json["latitude"].toDouble(),
//         longitude: json["longitude"].toDouble(),
//         display: json["display"],
//       );

//   Map<String, dynamic> toJson() => {
//         "latitude": latitude,
//         "longitude": longitude,
//         "display": display,
//       };
// }

// class TypeElement {
//   TypeElement({
//     required this.id,
//     required this.name,
//     required this.url,
//   });

//   int id;
//   String name;
//   String url;

//   factory TypeElement.fromJson(Map<String, dynamic> json) => TypeElement(
//         id: json["id"],
//         name: json["name"],
//         url: json["url"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "url": url,
//       };
// }

// class PostTag {
//   PostTag({
//     required this.id,
//     required this.name,
//   });

//   int id;
//   String name;

//   factory PostTag.fromJson(Map<String, dynamic> json) => PostTag(
//         id: json["id"],
//         name: json["name"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//       };
// }

// class EnumValues<T> {
//   Map<String, T> map;
//   Map<T, String> reverseMap;

//   EnumValues(this.map, this.reverseMap);

//   Map<T, String> get reverse {
//     reverseMap;
//     return reverseMap;
//   }
// }
