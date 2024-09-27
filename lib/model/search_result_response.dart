class SearchResultResponse {
  List<Results>? results;

  SearchResultResponse({this.results});

  SearchResultResponse.fromJson(Map<String, dynamic> json) {
    if (json['Results'] != null) {
      results = <Results>[];
      json['Results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.results != null) {
      data['Results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String? title;
  String? link;
  String? content;
  String? imageurls;

  Results({this.title, this.link, this.content, this.imageurls});

  Results.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    link = json['link'];
    content = json['content'];
    imageurls = json['imageurls'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['link'] = this.link;
    data['content'] = this.content;
    data['imageurls'] = this.imageurls;
    return data;
  }
}
