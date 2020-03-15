import 'dart:convert';

Timer timerFromJson(String str) => Timer.fromJson(json.decode(str));

String timerToJson(Timer data) => json.encode(data.toJson());

class Timer {
  String name;
  int count;
  int work;
  int rest;
  String startSignal;
  String endSignal;

  Timer({
    this.name,
    this.count,
    this.work,
    this.rest,
    this.startSignal,
    this.endSignal,
  });

  factory Timer.fromJson(Map<String, dynamic> json) => Timer(
    name: json["name"],
    count: json["count"],
    work: json["work"],
    rest: json["rest"],
    startSignal: json["startSignal"],
    endSignal: json["endSignal"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "count": count,
    "work": work,
    "rest": rest,
    "startSignal": startSignal,
    "endSignal": endSignal,
  };
}