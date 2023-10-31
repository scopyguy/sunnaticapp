class Video {
  final String id;
  final String title;
  final String thumbnailUrl;
  final String channelTitle;

  Video({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.channelTitle,
  });

  factory Video.fromMap(Map<String, dynamic> snippet) {
    return Video(
      id: snippet['resourceId']['videoId'],
      title: snippet['title'],
      thumbnailUrl: snippet['thumbnails']['high']['url'],
      channelTitle: snippet['channelTitle'],
    );
  }

  String publishedAt() {
    // Replace the following with your logic to get the publication date as a string.
    String publicationDate =
        "2023-10-27"; // Example date; replace it with your logic.

    // Check if the publicationDate is null or empty and provide a default value if needed.
    if (publicationDate == null || publicationDate.isEmpty) {
      return "N/A"; // You can replace "N/A" with a suitable default value.
    } else {
      return publicationDate;
    }
  }
}
