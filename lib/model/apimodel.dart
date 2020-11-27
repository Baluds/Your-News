class Articles {
  String title;
  String author;
  String description;
  String urlToImage;
  DateTime publshedAt;
  String content;
  String articleUrl;

  Articles(
      {this.title,
      this.description,
      this.author,
      this.content, //we will be not using this
      this.publshedAt, //we will be not using this
      this.urlToImage,
      this.articleUrl});
}
