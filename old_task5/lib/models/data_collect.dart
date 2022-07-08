class DataCollect{
  final int id;
  final String title;
  final String subTitle;
  final String description;
  final String eventUrl;
  final String startedAt;
  final String endedAt;
  final String? place;
  final String? address;

  DataCollect.fromJson(Map<String, dynamic> json)
    : id = json['event_id'],
      title = json['title'],
      subTitle = json['catch'],
      description = json['description'],
      eventUrl = json['event_url'],
      startedAt = json['started_at'],
      endedAt = json['ended_at'],
      place = json['place'],
      address = json['address'];
}