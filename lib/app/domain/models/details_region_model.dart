import 'dart:convert';

class DetailsRegionModel {
  String? lastUpdateEt;
  String? state;
  String? name;
  int? positive;
  DetailsRegionModel({
    this.lastUpdateEt,
    this.positive,
    this.state,
    this.name,
  });

  DetailsRegionModel copyWith({
    String? state,
    String? name,
    int? positive,
    String? lastUpdateEt,
  }) {
    return DetailsRegionModel(
      state: state ?? this.state,
      name: name ?? this.name,
      positive: positive ?? this.positive,
      lastUpdateEt: lastUpdateEt ?? this.lastUpdateEt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
      'name': name,
      'positive': positive,
      'lastUpdateEt': lastUpdateEt,
    };
  }

  factory DetailsRegionModel.fromMap(Map<String, dynamic> map) {
    return DetailsRegionModel(
      state: map['state'] != null ? map['state'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      positive: map['positive'] != null ? map['positive'] as int : null,
      lastUpdateEt:
          map['lastUpdateEt'] != null ? map['lastUpdateEt'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory DetailsRegionModel.fromJson(String source) =>
      DetailsRegionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DetailsRegionModel(state: $state, name: $name, positive: $positive, lastUpdateEt: $lastUpdateEt)';
  }

  @override
  bool operator ==(covariant DetailsRegionModel other) {
    if (identical(this, other)) return true;

    return other.state == state &&
        other.name == name &&
        other.positive == positive &&
        other.lastUpdateEt == lastUpdateEt;
  }

  @override
  int get hashCode {
    return state.hashCode ^
        name.hashCode ^
        positive.hashCode ^
        lastUpdateEt.hashCode;
  }
}
