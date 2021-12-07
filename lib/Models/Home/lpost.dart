class Lpost {
  int id;
  int categoryId;
  int authorId;
  String title;
  String slug;
  String cover;
  String body;
  String keyword;
  String metaDesc;
  int views;
  String status;
  String createdAt;
  String updatedAt;
  String? deletedAt;

  Lpost(
      {required this.id,
      required this.categoryId,
      required this.authorId,
      required this.title,
      required this.slug,
      required this.cover,
      required this.body,
      required this.keyword,
      required this.metaDesc,
      required this.views,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      required this.deletedAt});

  factory Lpost.fromJson(Map<String, dynamic> json) {
    return Lpost(
      id: json['id'],
      categoryId: json['category_id'],
      authorId: json['author_id'],
      title: json['title'],
      slug: json['slug'],
      cover: json['cover'],
      body: json['body'],
      keyword: json['keyword'],
      metaDesc: json['meta_desc'],
      views: json['views'],
      status: json['status'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      deletedAt: json['deleted_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['author_id'] = this.authorId;
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['cover'] = this.cover;
    data['body'] = this.body;
    data['keyword'] = this.keyword;
    data['meta_desc'] = this.metaDesc;
    data['views'] = this.views;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
