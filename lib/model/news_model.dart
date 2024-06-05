class NewsModel {
  NewsModel(
      {this.title,
      this.subtitle,
      this.description,
      this.views,
      this.comment,
      this.image,
      this.headline});

  final String? image;
  final String? headline;
  final String? title;
  final String? subtitle;
  final String? description;
  final String? views;
  final String? comment;
}
