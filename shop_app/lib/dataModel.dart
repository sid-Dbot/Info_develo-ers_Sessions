class BlogData {
  int? id;
  String? title;
  String? slug;
  String? image;
  String? content;
  String? createdAt;
  String? updatedAt;

  BlogData(
      {this.id,
      this.title,
      this.slug,
      this.image,
      this.content,
      this.createdAt,
      this.updatedAt});

  BlogData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    image = json['image'];
    content = json['content'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['slug'] = slug;
    data['image'] = image;
    data['content'] = content;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
