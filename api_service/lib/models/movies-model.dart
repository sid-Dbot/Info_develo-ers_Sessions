class Movies {
  int? id;
  String? title;
  String? image;
  int? likes;
  List<Comments>? comments;
  String? description;
  int? status;
  int? featureProduct;
  int? flashProduct;
  CreatedBy? createdBy;
  Null? updatedBy;
  Null? deletedAt;
  String? createdAt;
  String? updatedAt;
  List<Chapters>? chapters;
  List<Attributes>? attributes;

  Movies(
      {this.id,
      this.title,
      this.image,
      this.likes,
      this.comments,
      this.description,
      this.status,
      this.featureProduct,
      this.flashProduct,
      this.createdBy,
      this.updatedBy,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.chapters,
      this.attributes});

  Movies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    likes = json['likes'];
    if (json['comments'] != null) {
      comments = <Comments>[];
      json['comments'].forEach((v) {
        comments!.add(new Comments.fromJson(v));
      });
    }
    description = json['description'];
    status = json['status'];
    featureProduct = json['feature_product'];
    flashProduct = json['flash_product'];
    createdBy = json['created_by'] != null
        ? new CreatedBy.fromJson(json['created_by'])
        : null;
    updatedBy = json['updated_by'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['chapters'] != null) {
      chapters = <Chapters>[];
      json['chapters'].forEach((v) {
        chapters!.add(new Chapters.fromJson(v));
      });
    }
    if (json['attributes'] != null) {
      attributes = <Attributes>[];
      json['attributes'].forEach((v) {
        attributes!.add(new Attributes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['likes'] = this.likes;
    if (this.comments != null) {
      data['comments'] = this.comments!.map((v) => v.toJson()).toList();
    }
    data['description'] = this.description;
    data['status'] = this.status;
    data['feature_product'] = this.featureProduct;
    data['flash_product'] = this.flashProduct;
    if (this.createdBy != null) {
      data['created_by'] = this.createdBy!.toJson();
    }
    data['updated_by'] = this.updatedBy;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.chapters != null) {
      data['chapters'] = this.chapters!.map((v) => v.toJson()).toList();
    }
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Comments {
  int? id;
  int? productId;
  String? comments;
  int? likes;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;

  Comments(
      {this.id,
      this.productId,
      this.comments,
      this.likes,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  Comments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    comments = json['comments'];
    likes = json['likes'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['comments'] = this.comments;
    data['likes'] = this.likes;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}

class CreatedBy {
  int? id;
  String? name;
  String? email;
  Null? emailVerifiedAt;
  String? createdAt;
  String? updatedAt;

  CreatedBy(
      {this.id,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.createdAt,
      this.updatedAt});

  CreatedBy.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Chapters {
  int? id;
  int? number;
  String? name;
  String? description;
  int? status;
  int? productId;
  Null? favouriteId;
  int? createdBy;
  Null? updatedBy;
  Null? deletedAt;
  String? createdAt;
  String? updatedAt;

  Chapters(
      {this.id,
      this.number,
      this.name,
      this.description,
      this.status,
      this.productId,
      this.favouriteId,
      this.createdBy,
      this.updatedBy,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  Chapters.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    number = json['number'];
    name = json['name'];
    description = json['description'];
    status = json['status'];
    productId = json['product_id'];
    favouriteId = json['favourite_id'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['number'] = this.number;
    data['name'] = this.name;
    data['description'] = this.description;
    data['status'] = this.status;
    data['product_id'] = this.productId;
    data['favourite_id'] = this.favouriteId;
    data['created_by'] = this.createdBy;
    data['updated_by'] = this.updatedBy;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Attributes {
  int? id;
  String? name;
  int? status;
  int? createdBy;
  Null? updatedBy;
  Null? deletedAt;
  String? createdAt;
  String? updatedAt;
  Pivot? pivot;

  Attributes(
      {this.id,
      this.name,
      this.status,
      this.createdBy,
      this.updatedBy,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.pivot});

  Attributes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['status'] = this.status;
    data['created_by'] = this.createdBy;
    data['updated_by'] = this.updatedBy;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    return data;
  }
}

class Pivot {
  int? productId;
  int? attributeId;

  Pivot({this.productId, this.attributeId});

  Pivot.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    attributeId = json['attribute_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['attribute_id'] = this.attributeId;
    return data;
  }
}
