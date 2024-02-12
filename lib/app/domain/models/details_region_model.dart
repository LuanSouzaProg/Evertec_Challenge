import 'dart:convert';

class DetailsRegionModel {
  String? lastUpdateEt;
  String? state;
  String? name;
  int? positive;
  int? totalTestResults;
  int? hospitalizedCurrently;
  int? hospitalizedCumulative;
  int? death;
  int? totalTestsViral;
  int? positiveTestsViral;
  int? negativeTestsViral;
  DetailsRegionModel({
    this.lastUpdateEt,
    this.state,
    this.name,
    this.positive,
    this.totalTestResults,
    this.hospitalizedCurrently,
    this.hospitalizedCumulative,
    this.death,
    this.totalTestsViral,
    this.positiveTestsViral,
    this.negativeTestsViral,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdateEt': lastUpdateEt,
      'state': state,
      'name': name,
      'positive': positive,
      'totalTestResults': totalTestResults,
      'hospitalizedCurrently': hospitalizedCurrently,
      'hospitalizedCumulative': hospitalizedCumulative,
      'death': death,
      'totalTestsViral': totalTestsViral,
      'positiveTestsViral': positiveTestsViral,
      'negativeTestsViral': negativeTestsViral,
    };
  }

  factory DetailsRegionModel.fromMap(Map<String, dynamic> map) {
    return DetailsRegionModel(
      lastUpdateEt:
          map['lastUpdateEt'] != null ? map['lastUpdateEt'] as String : null,
      state: map['state'] != null ? map['state'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      positive: map['positive'] != null ? map['positive'] as int : null,
      totalTestResults: map['totalTestResults'] != null
          ? map['totalTestResults'] as int
          : null,
      hospitalizedCurrently: map['hospitalizedCurrently'] != null
          ? map['hospitalizedCurrently'] as int
          : null,
      hospitalizedCumulative: map['hospitalizedCumulative'] != null
          ? map['hospitalizedCumulative'] as int
          : null,
      death: map['death'] != null ? map['death'] as int : null,
      totalTestsViral:
          map['totalTestsViral'] != null ? map['totalTestsViral'] as int : null,
      positiveTestsViral: map['positiveTestsViral'] != null
          ? map['positiveTestsViral'] as int
          : null,
      negativeTestsViral: map['negativeTestsViral'] != null
          ? map['negativeTestsViral'] as int
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory DetailsRegionModel.fromJson(String source) =>
      DetailsRegionModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
