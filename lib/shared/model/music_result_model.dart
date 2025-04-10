class MusicResultModel {
  final String title;
  final String artist;
  final String artworkUrl;

  MusicResultModel({
    required this.title,
    required this.artist,
    required this.artworkUrl,
  });

  factory MusicResultModel.fromJson(Map<String, dynamic> json) {
    return MusicResultModel(
      title: json['title'] ?? '',
      artist: json['artist'] ?? '',
      artworkUrl: json['artworkUrl'] ?? '',
    );
  }
}
