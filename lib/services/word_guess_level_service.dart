enum WordGuessDifficulty { easy, medium, hard }

class WordGuessLevel {
  const WordGuessLevel({
    required this.word,
    required this.hint,
    required this.difficulty,
  });

  final String word;
  final String hint;
  final WordGuessDifficulty difficulty;
}

class WordGuessLevelService {
  WordGuessLevelService._();

  static const List<WordGuessLevel> levels = [
    WordGuessLevel(
      word: 'GIT',
      hint: 'Tracks changes in source code.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'AWS',
      hint: 'Amazon\'s cloud platform.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'API',
      hint: 'A contract that lets software systems communicate.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'DNS',
      hint: 'Translates domain names into IP addresses.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'CLI',
      hint: 'A text-based interface for running commands.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'CPU',
      hint: 'The processor that executes instructions.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'RAM',
      hint: 'Temporary memory used by running programs.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'SSH',
      hint: 'Secure protocol for remote shell access.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'YAML',
      hint: 'A human-readable data serialization format.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'LINUX',
      hint: 'Open-source operating system kernel and family.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'BASH',
      hint: 'A popular Unix command shell.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'CLOUD',
      hint: 'On-demand computing delivered over a network.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'DOCKER',
      hint: 'A platform for building and running containers.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'AZURE',
      hint: 'Microsoft\'s cloud platform.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'PYTHON',
      hint: 'A widely used scripting and programming language.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'GITHUB',
      hint: 'A popular hosted Git collaboration service.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'BGP',
      hint: 'Routing protocol that exchanges routes between autonomous systems.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'JENKINS',
      hint: 'An automation server often used for CI.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'PORT',
      hint: 'A numbered endpoint used by network services.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'PROXY',
      hint: 'A server that forwards requests for clients.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'CACHE',
      hint: 'A fast store for frequently reused data.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'CRON',
      hint: 'Unix scheduler for recurring commands.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'BICEP',
      hint: 'Azure\'s declarative language for infrastructure as code.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'APIGEE',
      hint: 'Google Cloud platform for centralized API management.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'SUDO',
      hint: 'Runs a command with elevated privileges.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'NGINX',
      hint: 'Web server and reverse proxy.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'REDIS',
      hint: 'In-memory data store often used as a cache.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'MYSQL',
      hint: 'Popular relational database system.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'RUBY',
      hint: 'Programming language used by tools such as Chef.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'HELM',
      hint: 'Package manager commonly used with Kubernetes.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'POD',
      hint: 'Smallest deployable unit in Kubernetes.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'IMAGE',
      hint: 'Read-only template used to create a container.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'BUILD',
      hint: 'Creates an artifact from source and dependencies.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'DEPLOY',
      hint: 'Releases an application into an environment.',
      difficulty: WordGuessDifficulty.easy,
    ),
    WordGuessLevel(
      word: 'TERRAFORM',
      hint: 'HashiCorp tool for infrastructure as code.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'ANSIBLE',
      hint: 'Agentless automation and configuration tool.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'KUBECTL',
      hint: 'Command-line client for Kubernetes.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'GCP',
      hint: 'Google Cloud Platform abbreviation.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'GITOPS',
      hint: 'Operational model that uses Git as the source of truth.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'PIPELINE',
      hint: 'Automated sequence of build, test, and release stages.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'CONTAINER',
      hint: 'Isolated process packaged with its dependencies.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'CLUSTER',
      hint: 'Group of machines managed as a shared system.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'INGRESS',
      hint: 'Kubernetes API object for external HTTP routing.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'FIREWALL',
      hint: 'Filters network traffic according to security rules.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'SUBNET',
      hint: 'Logical subdivision of an IP network.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'GATEWAY',
      hint: 'Network node that connects different networks.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'ROUTER',
      hint: 'Forwards packets between networks.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'SWITCH',
      hint: 'Connects devices within a local network.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'REPOSITORY',
      hint: 'Managed storage for source code or packages.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'SYSTEMD',
      hint: 'Linux init system and service manager.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'JOURNALCTL',
      hint: 'Command used to read systemd journal logs.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'PERMISSION',
      hint: 'Rule that controls who can read, write, or execute.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'ALLOYDB',
      hint: 'Google Cloud managed PostgreSQL-compatible database.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'CONFIGMAP',
      hint: 'Kubernetes object for non-secret configuration.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'SECRET',
      hint: 'Kubernetes object intended for sensitive data.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'PERSISTENT',
      hint: 'Describes storage that survives a workload restart.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'VOLUME',
      hint: 'Filesystem storage mounted into a container.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'STORAGE',
      hint: 'Persistent place for files, objects, or blocks.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'REPLICA',
      hint: 'Copy of a workload instance maintained for scale or reliability.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'DEPLOYMENT',
      hint: 'Kubernetes controller for stateless application pods.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'DOCKERFILE',
      hint: 'Instructions used to build a Docker image.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'DATABASE',
      hint: 'Organized store queried by applications.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'AUTOMATION',
      hint: 'Using software to perform repeatable tasks without manual steps.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'ANTHOS',
      hint: 'Google Cloud platform for managing clusters across environments.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'BIGQUERY',
      hint: 'Google Cloud service for large-scale data analytics.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'BIGTABLE',
      hint: 'Google Cloud wide-column NoSQL database for analytics.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'LOADBALANCER',
      hint: 'Distributes incoming traffic among multiple backends.',
      difficulty: WordGuessDifficulty.medium,
    ),
    WordGuessLevel(
      word: 'PROMETHEUS',
      hint: 'Monitoring system that stores time-series metrics.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'GRAFANA',
      hint: 'Platform for querying and visualizing observability data.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'CLOUDANT',
      hint: 'IBM Cloud managed NoSQL JSON document database.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'CLOUDTRAIL',
      hint: 'AWS service that records API activity for auditing.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'STATEFULSET',
      hint: 'Kubernetes controller for workloads that need stable identity.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'DAEMONSET',
      hint: 'Kubernetes controller that runs a pod on selected nodes.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'SERVICEACCOUNT',
      hint: 'Kubernetes identity used by a workload or process.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'NETWORKPOLICY',
      hint: 'Kubernetes resource that controls pod network traffic.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'CERTIFICATE',
      hint: 'Digital document used to establish identity in TLS.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'ENCRYPTION',
      hint: 'Transforms data so only authorized parties can read it.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'OBSERVABILITY',
      hint: 'Ability to infer system behavior from its outputs.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'COREDNS',
      hint: 'DNS server commonly used inside Kubernetes clusters.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'CROSSPLANE',
      hint: 'Project for managing cloud resources through Kubernetes APIs.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'FAILOVER',
      hint: 'Switch to a standby component after a failure.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'IDEMPOTENCY',
      hint:
          'Property where repeating an operation has the same effect as doing it once.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'DATAFLOW',
      hint: 'Google Cloud service for stream and batch data processing.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'ORCHESTRATION',
      hint: 'Coordinated management of multiple automated workloads.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'DATAPLEX',
      hint: 'Google Cloud service for discovering and governing enterprise data.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'SERVERLESS',
      hint:
          'Execution model where infrastructure management is abstracted away.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'DISTRIBUTED',
      hint: 'System whose components run across multiple networked machines.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'DATAPROC',
      hint: 'Google Cloud managed Apache Spark and Hadoop environment.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'DYNAMODB',
      hint: 'AWS NoSQL database often used for Terraform state locking.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'PROVISIONING',
      hint: 'Preparing infrastructure or resources for use.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'ELASTICSEARCH',
      hint: 'Search engine commonly used for centralized logging.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'ETCD',
      hint: 'Key-value store that holds Kubernetes cluster state.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'AUTHENTICATION',
      hint: 'Process of verifying who a user or service is.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'AUTHORIZATION',
      hint: 'Process of deciding what an identity is allowed to do.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'EXPRESSROUTE',
      hint: 'Azure service for dedicated private connectivity to data centers.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'CONFIGURATION',
      hint: 'Settings that determine how software behaves.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'INFRASTRUCTURE',
      hint: 'Compute, network, and storage resources supporting applications.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'FASTCONNECT',
      hint: 'Oracle Cloud service for dedicated private network connections.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'CONTAINERD',
      hint: 'Industry-standard container runtime used by Kubernetes.',
      difficulty: WordGuessDifficulty.hard,
    ),
    WordGuessLevel(
      word: 'KUBERNETES',
      hint: 'Container orchestration platform; final level.',
      difficulty: WordGuessDifficulty.hard,
    ),
  ];
}
