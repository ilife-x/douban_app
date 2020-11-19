class MovieModel {
  List<String> rating;
  int rank;
  String coverUrl;
  bool isPlayable;
  String id;
  List<String> types;
  List<String> regions;
  String title;
  String url;
  String releaseDate;
  int actorCount;
  int voteCount;
  String score;
  List<String> actors;
  bool isWatched;

  MovieModel(
      {this.rating,
      this.rank,
      this.coverUrl,
      this.isPlayable,
      this.id,
      this.types,
      this.regions,
      this.title,
      this.url,
      this.releaseDate,
      this.actorCount,
      this.voteCount,
      this.score,
      this.actors,
      this.isWatched});

  MovieModel.fromJson(Map<String, dynamic> json) {
    rating = json['rating'].cast<String>();
    rank = json['rank'];
    coverUrl = json['cover_url'];
    isPlayable = json['is_playable'];
    id = json['id'];
    types = json['types'].cast<String>();
    regions = json['regions'].cast<String>();
    title = json['title'];
    url = json['url'];
    releaseDate = json['release_date'];
    actorCount = json['actor_count'];
    voteCount = json['vote_count'];
    score = json['score'];
    actors = json['actors'].cast<String>();
    isWatched = json['is_watched'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rating'] = this.rating;
    data['rank'] = this.rank;
    data['cover_url'] = this.coverUrl;
    data['is_playable'] = this.isPlayable;
    data['id'] = this.id;
    data['types'] = this.types;
    data['regions'] = this.regions;
    data['title'] = this.title;
    data['url'] = this.url;
    data['release_date'] = this.releaseDate;
    data['actor_count'] = this.actorCount;
    data['vote_count'] = this.voteCount;
    data['score'] = this.score;
    data['actors'] = this.actors;
    data['is_watched'] = this.isWatched;
    return data;
  }

  String get year {
    return this.releaseDate.split("-").first;
  }

  String get allActors {
    String _result = "";
    this.actors.forEach((element) {
      if (actors.last == element) {
        _result = _result + element;
      } else {
        _result = _result + element + ' / ';
      }
    });
    return _result;
  }

  String get movieInfo {
    String _result = this.year + " / ";
    this.regions.forEach((element) {
      if (element == types.last) {
        _result = _result + element;
      } else {
        _result = _result + element + ' / ';
      }
    });
    this.types.forEach((element) {
      if (element == types.last) {
        _result = _result + element;
      } else {
        _result = _result + element + ' / ';
      }
    });
    return _result;
  }
}
