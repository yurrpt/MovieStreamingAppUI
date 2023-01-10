import 'dart:convert';

class Movies {
  final String backdropPath;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final String popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final int voteCount;
  final String voteAverage;
  Movies({
    required this.backdropPath,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteCount,
    required this.voteAverage,
  });

  Movies copyWith({
    String? backdropPath,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    String? popularity,
    String? posterPath,
    String? releaseDate,
    String? title,
    bool? video,
    int? voteCount,
    String? voteAverage,
  }) {
    return Movies(
      backdropPath: backdropPath ?? this.backdropPath,
      id: id ?? this.id,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      title: title ?? this.title,
      video: video ?? this.video,
      voteCount: voteCount ?? this.voteCount,
      voteAverage: voteAverage ?? this.voteAverage,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'backdropPath': backdropPath});
    result.addAll({'id': id});
    result.addAll({'originalLanguage': originalLanguage});
    result.addAll({'originalTitle': originalTitle});
    result.addAll({'overview': overview});
    result.addAll({'popularity': popularity});
    result.addAll({'posterPath': posterPath});
    result.addAll({'releaseDate': releaseDate});
    result.addAll({'title': title});
    result.addAll({'video': video});
    result.addAll({'voteCount': voteCount});
    result.addAll({'voteAverage': voteAverage});

    return result;
  }

  factory Movies.fromMap(Map<String, dynamic> map) {
    return Movies(
      backdropPath: map['backdropPath'] ?? '',
      id: map['id']?.toInt() ?? 0,
      originalLanguage: map['originalLanguage'] ?? '',
      originalTitle: map['originalTitle'] ?? '',
      overview: map['overview'] ?? '',
      popularity: map['popularity'] ?? '',
      posterPath: map['posterPath'] ?? '',
      releaseDate: map['releaseDate'] ?? '',
      title: map['title'] ?? '',
      video: map['video'] ?? false,
      voteCount: map['voteCount']?.toInt() ?? 0,
      voteAverage: map['voteAverage'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Movies.fromJson(String source) => Movies.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Movies(backdropPath: $backdropPath, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteCount: $voteCount, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Movies &&
        other.backdropPath == backdropPath &&
        other.id == id &&
        other.originalLanguage == originalLanguage &&
        other.originalTitle == originalTitle &&
        other.overview == overview &&
        other.popularity == popularity &&
        other.posterPath == posterPath &&
        other.releaseDate == releaseDate &&
        other.title == title &&
        other.video == video &&
        other.voteCount == voteCount &&
        other.voteAverage == voteAverage;
  }

  @override
  int get hashCode {
    return backdropPath.hashCode ^
        id.hashCode ^
        originalLanguage.hashCode ^
        originalTitle.hashCode ^
        overview.hashCode ^
        popularity.hashCode ^
        posterPath.hashCode ^
        releaseDate.hashCode ^
        title.hashCode ^
        video.hashCode ^
        voteCount.hashCode ^
        voteAverage.hashCode;
  }
}
