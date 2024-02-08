import 'dart:convert';

class CurrentCovidModel {
  int? date;
  int? states;
  int? positive;
  int? negative;
  int? pending;
  int? hospitalizedCurrently;
  int? hospitalizedCumulative;
  int? inIcuCurrently;
  int? inIcuCumulative;
  int? onVentilatorCurrently;
  int? onVentilatorCumulative;
  String? dateChecked;
  int? death;
  int? hospitalized;
  int? totalTestResults;
  String? lastModified;
  int? recovered;
  int? total;
  int? posNeg;
  int? deathIncrease;
  int? hospitalizedIncrease;
  int? negativeIncrease;
  int? positiveIncrease;
  int? totalTestResultsIncrease;
  String? hash;
  CurrentCovidModel({
    this.date,
    this.states,
    this.positive,
    this.negative,
    this.pending,
    this.hospitalizedCurrently,
    this.hospitalizedCumulative,
    this.inIcuCurrently,
    this.inIcuCumulative,
    this.onVentilatorCurrently,
    this.onVentilatorCumulative,
    this.dateChecked,
    this.death,
    this.hospitalized,
    this.totalTestResults,
    this.lastModified,
    this.recovered,
    this.total,
    this.posNeg,
    this.deathIncrease,
    this.hospitalizedIncrease,
    this.negativeIncrease,
    this.positiveIncrease,
    this.totalTestResultsIncrease,
    this.hash,
  });

  CurrentCovidModel copyWith({
    int? date,
    int? states,
    int? positive,
    int? negative,
    int? pending,
    int? hospitalizedCurrently,
    int? hospitalizedCumulative,
    int? inIcuCurrently,
    int? inIcuCumulative,
    int? onVentilatorCurrently,
    int? onVentilatorCumulative,
    String? dateChecked,
    int? death,
    int? hospitalized,
    int? totalTestResults,
    String? lastModified,
    int? recovered,
    int? total,
    int? posNeg,
    int? deathIncrease,
    int? hospitalizedIncrease,
    int? negativeIncrease,
    int? positiveIncrease,
    int? totalTestResultsIncrease,
    String? hash,
  }) {
    return CurrentCovidModel(
      date: date ?? this.date,
      states: states ?? this.states,
      positive: positive ?? this.positive,
      negative: negative ?? this.negative,
      pending: pending ?? this.pending,
      hospitalizedCurrently:
          hospitalizedCurrently ?? this.hospitalizedCurrently,
      hospitalizedCumulative:
          hospitalizedCumulative ?? this.hospitalizedCumulative,
      inIcuCurrently: inIcuCurrently ?? this.inIcuCurrently,
      inIcuCumulative: inIcuCumulative ?? this.inIcuCumulative,
      onVentilatorCurrently:
          onVentilatorCurrently ?? this.onVentilatorCurrently,
      onVentilatorCumulative:
          onVentilatorCumulative ?? this.onVentilatorCumulative,
      dateChecked: dateChecked ?? this.dateChecked,
      death: death ?? this.death,
      hospitalized: hospitalized ?? this.hospitalized,
      totalTestResults: totalTestResults ?? this.totalTestResults,
      lastModified: lastModified ?? this.lastModified,
      recovered: recovered ?? this.recovered,
      total: total ?? this.total,
      posNeg: posNeg ?? this.posNeg,
      deathIncrease: deathIncrease ?? this.deathIncrease,
      hospitalizedIncrease: hospitalizedIncrease ?? this.hospitalizedIncrease,
      negativeIncrease: negativeIncrease ?? this.negativeIncrease,
      positiveIncrease: positiveIncrease ?? this.positiveIncrease,
      totalTestResultsIncrease:
          totalTestResultsIncrease ?? this.totalTestResultsIncrease,
      hash: hash ?? this.hash,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'states': states,
      'positive': positive,
      'negative': negative,
      'pending': pending,
      'hospitalizedCurrently': hospitalizedCurrently,
      'hospitalizedCumulative': hospitalizedCumulative,
      'inIcuCurrently': inIcuCurrently,
      'inIcuCumulative': inIcuCumulative,
      'onVentilatorCurrently': onVentilatorCurrently,
      'onVentilatorCumulative': onVentilatorCumulative,
      'dateChecked': dateChecked,
      'death': death,
      'hospitalized': hospitalized,
      'totalTestResults': totalTestResults,
      'lastModified': lastModified,
      'recovered': recovered,
      'total': total,
      'posNeg': posNeg,
      'deathIncrease': deathIncrease,
      'hospitalizedIncrease': hospitalizedIncrease,
      'negativeIncrease': negativeIncrease,
      'positiveIncrease': positiveIncrease,
      'totalTestResultsIncrease': totalTestResultsIncrease,
      'hash': hash,
    };
  }

  factory CurrentCovidModel.fromMap(Map<String, dynamic> map) {
    return CurrentCovidModel(
      date: map['date'] != null ? map['date'] as int : null,
      states: map['states'] != null ? map['states'] as int : null,
      positive: map['positive'] != null ? map['positive'] as int : null,
      negative: map['negative'] != null ? map['negative'] as int : null,
      pending: map['pending'] != null ? map['pending'] as int : null,
      hospitalizedCurrently: map['hospitalizedCurrently'] != null
          ? map['hospitalizedCurrently'] as int
          : null,
      hospitalizedCumulative: map['hospitalizedCumulative'] != null
          ? map['hospitalizedCumulative'] as int
          : null,
      inIcuCurrently:
          map['inIcuCurrently'] != null ? map['inIcuCurrently'] as int : null,
      inIcuCumulative:
          map['inIcuCumulative'] != null ? map['inIcuCumulative'] as int : null,
      onVentilatorCurrently: map['onVentilatorCurrently'] != null
          ? map['onVentilatorCurrently'] as int
          : null,
      onVentilatorCumulative: map['onVentilatorCumulative'] != null
          ? map['onVentilatorCumulative'] as int
          : null,
      dateChecked:
          map['dateChecked'] != null ? map['dateChecked'] as String : null,
      death: map['death'] != null ? map['death'] as int : null,
      hospitalized:
          map['hospitalized'] != null ? map['hospitalized'] as int : null,
      totalTestResults: map['totalTestResults'] != null
          ? map['totalTestResults'] as int
          : null,
      lastModified:
          map['lastModified'] != null ? map['lastModified'] as String : null,
      recovered: map['recovered'] != null ? map['recovered'] as int : null,
      total: map['total'] != null ? map['total'] as int : null,
      posNeg: map['posNeg'] != null ? map['posNeg'] as int : null,
      deathIncrease:
          map['deathIncrease'] != null ? map['deathIncrease'] as int : null,
      hospitalizedIncrease: map['hospitalizedIncrease'] != null
          ? map['hospitalizedIncrease'] as int
          : null,
      negativeIncrease: map['negativeIncrease'] != null
          ? map['negativeIncrease'] as int
          : null,
      positiveIncrease: map['positiveIncrease'] != null
          ? map['positiveIncrease'] as int
          : null,
      totalTestResultsIncrease: map['totalTestResultsIncrease'] != null
          ? map['totalTestResultsIncrease'] as int
          : null,
      hash: map['hash'] != null ? map['hash'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CurrentCovidModel.fromJson(String source) =>
      CurrentCovidModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CurrentCovidModel(date: $date, states: $states, positive: $positive, negative: $negative, pending: $pending, hospitalizedCurrently: $hospitalizedCurrently, hospitalizedCumulative: $hospitalizedCumulative, inIcuCurrently: $inIcuCurrently, inIcuCumulative: $inIcuCumulative, onVentilatorCurrently: $onVentilatorCurrently, onVentilatorCumulative: $onVentilatorCumulative, dateChecked: $dateChecked, death: $death, hospitalized: $hospitalized, totalTestResults: $totalTestResults, lastModified: $lastModified, recovered: $recovered, total: $total, posNeg: $posNeg, deathIncrease: $deathIncrease, hospitalizedIncrease: $hospitalizedIncrease, negativeIncrease: $negativeIncrease, positiveIncrease: $positiveIncrease, totalTestResultsIncrease: $totalTestResultsIncrease, hash: $hash)';
  }

  @override
  bool operator ==(covariant CurrentCovidModel other) {
    if (identical(this, other)) return true;

    return other.date == date &&
        other.states == states &&
        other.positive == positive &&
        other.negative == negative &&
        other.pending == pending &&
        other.hospitalizedCurrently == hospitalizedCurrently &&
        other.hospitalizedCumulative == hospitalizedCumulative &&
        other.inIcuCurrently == inIcuCurrently &&
        other.inIcuCumulative == inIcuCumulative &&
        other.onVentilatorCurrently == onVentilatorCurrently &&
        other.onVentilatorCumulative == onVentilatorCumulative &&
        other.dateChecked == dateChecked &&
        other.death == death &&
        other.hospitalized == hospitalized &&
        other.totalTestResults == totalTestResults &&
        other.lastModified == lastModified &&
        other.recovered == recovered &&
        other.total == total &&
        other.posNeg == posNeg &&
        other.deathIncrease == deathIncrease &&
        other.hospitalizedIncrease == hospitalizedIncrease &&
        other.negativeIncrease == negativeIncrease &&
        other.positiveIncrease == positiveIncrease &&
        other.totalTestResultsIncrease == totalTestResultsIncrease &&
        other.hash == hash;
  }

  @override
  int get hashCode {
    return date.hashCode ^
        states.hashCode ^
        positive.hashCode ^
        negative.hashCode ^
        pending.hashCode ^
        hospitalizedCurrently.hashCode ^
        hospitalizedCumulative.hashCode ^
        inIcuCurrently.hashCode ^
        inIcuCumulative.hashCode ^
        onVentilatorCurrently.hashCode ^
        onVentilatorCumulative.hashCode ^
        dateChecked.hashCode ^
        death.hashCode ^
        hospitalized.hashCode ^
        totalTestResults.hashCode ^
        lastModified.hashCode ^
        recovered.hashCode ^
        total.hashCode ^
        posNeg.hashCode ^
        deathIncrease.hashCode ^
        hospitalizedIncrease.hashCode ^
        negativeIncrease.hashCode ^
        positiveIncrease.hashCode ^
        totalTestResultsIncrease.hashCode ^
        hash.hashCode;
  }
}
