import '../l10n/app_localizations.dart';
import '../models/question.dart';

class PortService {
  const PortService(this.name, this.port);

  final String name;
  final int port;
}

class PortQuestionService {
  static const bank = 'PortMaster';
  static const services = [
    PortService('SSH', 22),
    PortService('HTTP', 80),
    PortService('HTTPS', 443),
    PortService('FTP (control)', 21),
    PortService('Telnet', 23),
    PortService('SMTP', 25),
    PortService('DNS', 53),
    PortService('POP3', 110),
    PortService('IMAP', 143),
    PortService('LDAP', 389),
    PortService('SMB', 445),
    PortService('MySQL', 3306),
    PortService('PostgreSQL', 5432),
    PortService('Redis', 6379),
    PortService('MongoDB', 27017),
    PortService('RDP', 3389),
    PortService('Jenkins (default)', 8080),
    PortService('Elasticsearch (HTTP)', 9200),
    PortService('Prometheus', 9090),
    PortService('Grafana', 3000),
    PortService('etcd (client)', 2379),
    PortService('Kubernetes API server', 6443),
    PortService('Docker daemon (TLS)', 2376),
    PortService('RabbitMQ (AMQP)', 5672),
    PortService('Kafka broker', 9092),
    PortService('Zookeeper', 2181),
    PortService('NTP', 123),
    PortService('SNMP', 161),
  ];

  static Question question(
    PortService service,
    List<int> options,
    AppLocalizations l10n,
  ) => Question(
    // Include random distractors so saved review reproduces the shown options.
    id: '$bank:${service.port}:${options.join(',')}',
    category: bank,
    set: 1,
    question: l10n.defaultPortQuestion(service.name),
    options: options.map((port) => '$port').toList(),
    answer: '${service.port}',
  );

  static Question restore(String id, AppLocalizations l10n) {
    final parts = id.split(':');
    if (parts.length != 3 || parts.first != bank) {
      throw FormatException('Invalid saved port question: $id');
    }
    final port = int.parse(parts[1]);
    final options = parts[2].split(',').map(int.parse).toList();
    final service = services.singleWhere((service) => service.port == port);
    if (options.length != 4 ||
        options.toSet().length != 4 ||
        !options.contains(port)) {
      throw FormatException('Invalid saved port options: $id');
    }
    return question(service, options, l10n);
  }
}
