
class DomainAvailable {
  bool available;
  String currency;
  String domain;
  int period;
  int price;
  DomainAvailable(this.available, this.currency, this.domain, this.period, this.price);
  DomainAvailable.fromJson(Map<String, dynamic> jsoschon):
  available = jsoschon['available'] as bool,
  currency = jsoschon['currency'] as String,
  domain = jsoschon['domain'] as String,
  period = jsoschon['period'] as int,
  price = jsoschon['price'] as int;
}
