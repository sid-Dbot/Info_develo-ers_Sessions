class Services_data {
  int? id;
  String? title;
  String? slug;
  String? image;
  String? content;
  String? createdAt;
  String? updatedAt;

  Services_data(
      {this.id,
      this.title,
      this.slug,
      this.image,
      this.content,
      this.createdAt,
      this.updatedAt});

  Services_data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    image = json['image'];
    content = json['content'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['image'] = this.image;
    data['content'] = this.content;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
