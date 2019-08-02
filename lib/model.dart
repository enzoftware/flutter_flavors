class Photo {
  String id;
  String title;
  String url;

  Photo({this.id, this.title, this.url});

  Photo.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    title = json['title'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}
