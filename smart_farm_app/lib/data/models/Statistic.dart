class Statistic {
  int? id;
  double? revenue;
  double? profit;
  DateTime? timePeriod;

  Statistic({
    required this.id,
    required this.revenue,
    required this.profit,
    required this.timePeriod
  });

  Statistic.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    revenue = json['revenue'];
    profit = json['profit'];
    timePeriod = json['time_period'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['revenue'] = revenue;
    data['profitn'] = profit;
    data['time_period'] = timePeriod;
    return data;
  }
}