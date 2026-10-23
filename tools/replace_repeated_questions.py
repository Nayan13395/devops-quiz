import json
import re
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
QUESTION_ROOT = ROOT / "assets" / "questions"
DATA = {
    "Ansible": (
        "Ansible playbook host-selection pattern|Ansible loop item variable|Ansible task result registration|Ansible role defaults precedence|Ansible role vars precedence|Ansible dynamic role inclusion|Ansible static role import|Ansible handler flush command|Ansible task failure override|Ansible task change override|Ansible free strategy behavior|Ansible linear strategy behavior|Ansible rolling batch setting|Ansible task async polling|Ansible inventory child groups|Ansible inventory host variable file|Ansible inventory group variable file|Ansible playbook syntax validation|Ansible encrypted variable tool|Ansible vault password identifier|Ansible fact gathering switch|Ansible fact cache purpose|Ansible connection delegation|Ansible local connection mode|Ansible privilege target user|Ansible task tag selection|Ansible skip-tag option|Ansible collection namespace format|Ansible module documentation command|Ansible configuration file name|Ansible forks setting|Ansible check-mode behavior|Ansible template module output|Ansible copy module purpose|Ansible fetch module direction|Ansible synchronize transport|Ansible block error recovery|Ansible always section behavior|Ansible rescue section behavior|Ansible idempotence meaning|Ansible become escalation switch".split("|"),
        "--limit|loop_var|register|defaults|vars|include_role|import_role|meta: flush_handlers|ignore_errors|changed_when|free|linear|serial|async with poll|children|host_vars|group_vars|ansible-playbook --syntax-check|ansible-vault|--vault-id|gather_facts|reuse gathered facts|delegate_to|connection: local|become_user|--tags|--skip-tags|namespace.collection|ansible-doc|ansible.cfg|forks|predict changes without applying|render a Jinja2 template|copy a controller file to hosts|copy a remote file to controller|rsync over SSH|recover from a failed block|run regardless of block result|run only after block failure|safe repeated application|become: true".split("|"),
    ),
    "Docker": (
        "Docker image content digest reference|Docker multi-stage build purpose|Docker build cache invalidation|Docker build context exclusion file|Docker container health probe|Docker named volume lifecycle|Docker bind mount source|Docker bridge network behavior|Docker host network behavior|Docker port publishing flag|Docker container restart policy|Docker image layer reuse|Docker image cleanup command|Docker container log command|Docker container inspect command|Docker process list command|Docker image history command|Docker image registry login command|Docker build target stage flag|Docker build platform option|Docker container read-only root|Docker resource memory limit flag|Docker CPU quota flag|Docker Compose service dependency|Docker Compose environment file|Docker Compose detached launch|Docker Compose stop behavior|Docker container exec command|Docker container copy command|Docker image save format command|Docker image load counterpart|Docker container export result|Docker image import command|Docker prune volume option|Docker container init process flag|Docker user namespace purpose|Docker secrets storage purpose|Docker health status values|Docker daemon socket risk|Dockerfile cache mount feature|Docker build metadata inspection|Docker restart unless-stopped meaning".split("|"),
        "sha256 digest|copy only final artifacts into a smaller image|a changed prior layer rebuilds following layers|.dockerignore|HEALTHCHECK|persists independently of a container|host filesystem path|connects containers on a virtual subnet|shares the host network namespace|-p|restart policy|identical layers are shared|docker image prune|docker logs|docker inspect|docker top|docker history|docker login|--target|--platform|read-only root filesystem|--memory|--cpus|depends_on|.env|docker compose up -d|stops services without removing them|docker exec|docker cp|docker save|docker load|a filesystem tar archive|docker import|docker volume prune|--init|map container users to unprivileged host users|sensitive values mounted to services|starting, healthy, unhealthy|host-level administrative access|BuildKit RUN --mount=type=cache|docker buildx imagetools inspect|restarts unless explicitly stopped".split("|"),
    ),
    "Git": (
        "Git staged content comparison command|Git last commit amend command|Git remote-tracking update command|Git branch divergence summary command|Git commit identity configuration command|Git repository-local configuration flag|Git ignored-file explanation command|Git show file at revision syntax|Git restore staged file syntax|Git unstage file command|Git rename detection command|Git annotate line history command|Git whitespace-insensitive diff flag|Git patch staging command|Git patch unstaging command|Git remote branch deletion syntax|Git local branch rename syntax|Git branch upstream setup command|Git tag listing pattern|Git annotated tag verification command|Git commit signature verification command|Git shallow clone depth flag|Git submodule update initialization flag|Git worktree listing command|Git bisect starting command|Git bisect good marker|Git bisect bad marker|Git archive output format flag|Git bundle creation command|Git clean preview flag|Git clean untracked directories flag|Git rerere purpose|Git reflog expiration command|Git sparse checkout cone mode|Git cherry-pick continue command|Git revert merge mainline option|Git fetch pruning option|Git log graph compact flag|Git diff rename similarity setting|Git pack garbage collection command".split("|"),
        "git diff --cached|git commit --amend|git fetch|git status -sb|git config user.name|--local|git check-ignore -v|git show REV:path|git restore --staged path|git reset HEAD -- path|git diff -M|git blame|git diff -w|git add -p|git restore -p|git push origin --delete branch|git branch -m|git branch --set-upstream-to|git tag -l pattern|git tag -v|git verify-commit|--depth=N|git submodule update --init --recursive|git worktree list|git bisect start|git bisect good|git bisect bad|--format=tar|git bundle create|git clean -n|git clean -fd|reuse recorded conflict resolutions|git reflog expire|git sparse-checkout set --cone|git cherry-pick --continue|-m 1|git fetch --prune|--graph --oneline|git diff -M|git gc".split("|"),
    ),
    "Jenkins": (
        "Jenkins credential binding step|Jenkins pipeline agent directive|Jenkins Declarative stage section|Jenkins pipeline environment block|Jenkins input approval step|Jenkins timeout pipeline option|Jenkins retry pipeline option|Jenkins post always condition|Jenkins archive build output step|Jenkins JUnit report step|Jenkins stash pipeline purpose|Jenkins unstash pipeline purpose|Jenkins shared library directory|Jenkins multibranch pipeline source|Jenkins webhook trigger purpose|Jenkins build parameter declaration|Jenkins secret text credential kind|Jenkins credential scope purpose|Jenkins controller responsibilities|Jenkins agent executor meaning|Jenkins label expression purpose|Jenkins workspace purpose|Jenkins build queue purpose|Jenkins fingerprint artifact purpose|Jenkins artifact retention setting|Jenkins pipeline parallel stages|Jenkins matrix axis purpose|Jenkins when branch condition|Jenkins fail build step|Jenkins unstable build result|Jenkins quiet period purpose|Jenkins throttle builds purpose|Jenkins script approval purpose|Jenkins plugin update center|Jenkins configuration as code file|Jenkins credentials masking limit|Jenkins pipeline post cleanup condition|Jenkins replay pipeline purpose|Jenkins restart from stage support|Jenkins build cause inspection|Jenkins queued work during agent outage".split("|"),
        "withCredentials|agent|stages|environment|input|timeout|retry|always|archiveArtifacts|junit|preserve files between stages in one run|restore stashed files|vars directory|discover branches containing a Jenkinsfile|notify Jenkins of a repository change|parameters|Secret text|limit credential visibility|schedule jobs and manage agents|a parallel worker slot|select matching agents|directory for a job checkout and build|waiting builds|trace artifact usage|discard old builds and artifacts|execute stages concurrently|generate combinations of axis values|when { branch 'main' }|error|UNSTABLE|delay before a queued build starts|limit concurrent builds|approve restricted Groovy signatures|install and manage plugins|jenkins.yaml|logs may still expose transformed secrets|cleanup|re-run a build with modified pipeline code|continue after a controller restart|currentBuild.getBuildCauses()|waits for a matching online agent".split("|"),
    ),
    "Kubernetes": (
        "Kubernetes service stable virtual address|Kubernetes service external cloud endpoint|Kubernetes namespace scope|Kubernetes ConfigMap data purpose|Kubernetes Secret data purpose|Kubernetes readiness probe effect|Kubernetes liveness probe effect|Kubernetes startup probe effect|Kubernetes deployment rollback command|Kubernetes rollout status command|Kubernetes replica count update command|Kubernetes pod log previous container flag|Kubernetes pod shell command|Kubernetes resource request meaning|Kubernetes resource limit meaning|Kubernetes node taint effect|Kubernetes pod toleration effect|Kubernetes node selector purpose|Kubernetes affinity purpose|Kubernetes ingress controller role|Kubernetes persistent volume claim role|Kubernetes storage class role|Kubernetes service account role|Kubernetes RBAC role binding|Kubernetes cluster role scope|Kubernetes cron job schedule field|Kubernetes job completion setting|Kubernetes daemon set placement|Kubernetes stateful set identity|Kubernetes init container purpose|Kubernetes ephemeral container purpose|Kubernetes pod disruption budget purpose|Kubernetes HPA metric source|Kubernetes rollout pause command|Kubernetes rollout resume command|Kubernetes secret encryption at rest|Kubernetes API server role|Kubernetes kubelet responsibility|Kubernetes CoreDNS role|Kubernetes finalizer purpose".split("|"),
        "Service|LoadBalancer|namespaced resources|non-sensitive configuration values|sensitive configuration values|removes pod from service endpoints|restarts an unhealthy container|delays other probes during slow startup|kubectl rollout undo deployment/name|kubectl rollout status deployment/name|kubectl scale deployment/name --replicas=N|--previous|kubectl exec -it pod -- sh|minimum expected CPU or memory|maximum allowed CPU or memory|repel pods without matching tolerations|allow scheduling onto a tainted node|place pod on nodes with matching labels|express preferred or required placement rules|routes HTTP traffic to services|request for storage by a workload|provisions volumes with a policy|identity for processes in a pod|grants a role to a subject|permissions across cluster resources|schedule in cron format|number of successful completions|runs a pod on each eligible node|stable network identity and storage|complete setup before app containers start|temporary debugging container|maintain availability during voluntary disruptions|resource metrics or custom metrics|kubectl rollout pause deployment/name|kubectl rollout resume deployment/name|encrypt stored Secret data in etcd|validates and stores cluster API objects|runs on each node and manages pods|resolves service DNS names|delays deletion until cleanup completes".split("|"),
    ),
    "Linux": (
        "Linux default permission mask command|Linux setuid permission meaning|Linux sticky directory bit meaning|Linux hard link inode behavior|Linux symbolic link target behavior|Linux systemd service enable command|Linux current boot journal flag|Linux process signal graceful termination|Linux process forced termination signal|Linux disk filesystem usage command|Linux directory size summary command|Linux block device listing command|Linux mounted filesystem listing command|Linux archive create gzip command|Linux archive list contents command|Linux file search name option|Linux text search recursive flag|Linux text substitution stream editor|Linux field extraction delimiter flag|Linux sort numeric flag|Linux count lines words bytes command|Linux process tree command|Linux listening sockets command|Linux open file descriptor tool|Linux environment variable export command|Linux scheduled task user crontab|Linux temporary directory convention|Linux DNS lookup command|Linux route table command|Linux IP address display command|Linux package file ownership query|Linux service status command|Linux system boot time command|Linux user identity command|Linux group membership command|Linux disk UUID listing command|Linux mount by UUID configuration|Linux permission ownership command|Linux process priority adjustment|Linux file capability listing command".split("|"),
        "umask|runs a program with the file owner's effective user ID|restricts deletion in shared directories|share the same inode|store a path to another file|systemctl enable service|journalctl -b|SIGTERM|SIGKILL|df -h|du -sh directory|lsblk|findmnt|tar -czf archive.tar.gz path|tar -tzf archive.tar.gz|find path -name pattern|grep -R|sed|cut -d delimiter -f field|sort -n|wc|pstree|ss -lntup|lsof|export NAME=value|crontab -e|/tmp|getent hosts name|ip route|ip addr|dpkg -S path|systemctl status service|uptime -s|id|groups|blkid|UUID= entry in /etc/fstab|chown|nice|getcap".split("|"),
    ),
    "Networking": (
        "DNS record IPv4 mapping|DNS record IPv6 mapping|DNS canonical name record|DNS mail exchanger record|DNS text record common use|DNS reverse lookup record|DHCP lease renewal message|DHCP server offer message|DHCP client discovery message|IPv4 private address range example|IPv6 loopback address|CIDR prefix network meaning|TCP connection close handshake flag|UDP transport delivery guarantee|TLS certificate hostname verification|TLS ALPN negotiation purpose|HTTP idempotent method example|HTTP redirect status code temporary|HTTP client error unauthorized status|HTTP request body content type header|ARP address resolution purpose|ICMP echo request utility|NAT source address translation purpose|PAT port translation purpose|BGP autonomous system path attribute|OSPF shortest path algorithm|MTU fragmentation avoidance purpose|MSS TCP payload size purpose|SNI TLS extension purpose|DoH DNS transport protocol|NTP time synchronization port|SSH default port number|HTTPS default port number|DNS default port number|BGP default port number|Syslog default UDP port|Loopback IPv4 address|Link-local IPv4 range|TCP SYN flag meaning|TCP FIN flag meaning|TCP RST flag meaning".split("|"),
        "A record|AAAA record|CNAME record|MX record|SPF or domain verification text|PTR record|DHCPREQUEST|DHCPOFFER|DHCPDISCOVER|10.0.0.0/8|::1|number of leading network bits|FIN|does not guarantee delivery or ordering|the requested hostname matches a certificate SAN|agree on an application protocol such as h2|PUT|302 Found|401 Unauthorized|Content-Type|map an IPv4 address to a MAC address|ping|translate internal source addresses to a public address|share one public address using distinct ports|AS_PATH|Dijkstra's shortest path first|largest packet supported without fragmentation|maximum TCP data segment size|client hostname selection|HTTPS|123|22|443|53|179|514|127.0.0.1|169.254.0.0/16|starts a TCP connection|gracefully closes a sending direction|resets a connection immediately".split("|"),
    ),
    "Terraform": (
        "Terraform dependency lock file name|Terraform state backend purpose|Terraform state locking purpose|Terraform variable validation block|Terraform sensitive variable effect|Terraform output sensitivity flag|Terraform local value purpose|Terraform module source purpose|Terraform module version constraint|Terraform for_each key requirement|Terraform count index value|Terraform lifecycle create before destroy|Terraform lifecycle ignore changes|Terraform import existing resource command|Terraform state list command|Terraform state show command|Terraform output JSON command|Terraform plan output file flag|Terraform apply saved plan behavior|Terraform destroy target option|Terraform workspace select command|Terraform workspace isolation limitation|Terraform provider alias purpose|Terraform provider required version block|Terraform data source purpose|Terraform moved block purpose|Terraform removed block purpose|Terraform check block purpose|Terraform precondition evaluation phase|Terraform postcondition evaluation phase|Terraform fmt recursive flag|Terraform validate initialization requirement|Terraform init upgrade flag|Terraform init backend migration flag|Terraform taint replacement alternative|Terraform replace resource command|Terraform refresh-only plan mode|Terraform console expression evaluator|Terraform dynamic block purpose|Terraform null resource replacement|Terraform provisioner recommended usage".split("|"),
        ".terraform.lock.hcl|store and retrieve state snapshots|prevent concurrent state writes|variable validation|redacts value in CLI output and state display|sensitive = true|name an expression for reuse in a module|reuse and encapsulate configuration|version = constraint|stable unique map keys|zero-based numeric instance index|create replacement before deleting old object|ignore selected attribute diffs|terraform import address id|terraform state list|terraform state show address|terraform output -json|-out=plan.tfplan|applies the exact saved plan|terraform destroy -target=address|terraform workspace select name|it does not isolate credentials or backends automatically|select a secondary configuration for one resource|required_providers block|read existing infrastructure without managing it|record an address change without recreation|remove from state without destroying the object|assert conditions about managed infrastructure|before the resource operation|after the resource operation|terraform fmt -recursive|terraform init|terraform init -upgrade|migrate backend state|use a replace trigger instead of taint|terraform apply -replace=address|plan without changing state|evaluate expressions interactively|generate repeated nested configuration|replacement is triggered by a changed trigger|avoid provisioners when provider resources exist".split("|"),
    ),
}

FILES = {
    "Ansible": ("Ansible", "ansible"),
    "Docker": ("Docker", "docker"),
    "Git": ("Git", "git"),
    "Jenkins": ("Jenkins", "jenkins"),
    "Kubernetes": ("K8s", "k8s"),
    "Linux": ("Linux", "linux"),
    "Networking": ("Networking", "networking"),
    "Terraform": ("Terraform", "terraform"),
}
LOCALES = ("en", "hi", "mr")


def normalize(text):
    return re.sub(r"\s+", " ", text).strip().casefold()


def format_bank(items):
    lines = ["["]
    for index, item in enumerate(items):
        lines.append("  {")
        fields = list(item.items())
        for field_index, (key, value) in enumerate(fields):
            encoded = json.dumps(value, ensure_ascii=False, separators=(", ", ": "))
            comma = "," if field_index < len(fields) - 1 else ""
            lines.append(f"    {json.dumps(key)}: {encoded}{comma}")
        lines.append("  }" + ("," if index < len(items) - 1 else ""))
    lines.append("]")
    return "\n".join(lines) + "\n"


def object_value_spans(text, start, end):
    decoder = json.JSONDecoder()
    spans = {}
    position = start + 1
    while position < end:
        while text[position].isspace() or text[position] == ",":
            position += 1
        if text[position] == "}":
            return spans
        key, position = decoder.raw_decode(text, position)
        while text[position].isspace():
            position += 1
        position += 1
        while text[position].isspace():
            position += 1
        value_start = position
        _, position = decoder.raw_decode(text, position)
        spans[key] = (value_start, position)
    raise ValueError("Unclosed question JSON object")


def records_with_spans(text):
    decoder = json.JSONDecoder()
    records = []
    position = text.index("[") + 1
    while position < len(text):
        while position < len(text) and (text[position].isspace() or text[position] == ","):
            position += 1
        if position >= len(text) or text[position] == "]":
            break
        record, end = decoder.raw_decode(text, position)
        records.append((record, object_value_spans(text, position, end)))
        position = end
    return records


def write_preserving_layout(path, items):
    relative = path.relative_to(ROOT).as_posix()
    result = subprocess.run(
        ["git", "show", f"HEAD:{relative}"],
        cwd=ROOT,
        capture_output=True,
        text=True,
        encoding="utf-8",
        check=True,
    )
    original = result.stdout
    baseline_records = records_with_spans(original)
    if len(baseline_records) != len(items):
        raise ValueError(f"{path}: record count differs from the original layout")

    edits = []
    for index, desired in enumerate(items):
        baseline, spans = baseline_records[index]
        if desired.keys() != baseline.keys():
            raise ValueError(f"{path}: record fields differ at index {index}")
        for key, value in desired.items():
            if value != baseline[key]:
                start, end = spans[key]
                encoded = json.dumps(value, ensure_ascii=False, separators=(", ", ": "))
                edits.append((start, end, encoded))

    for start, end, encoded in sorted(edits, reverse=True):
        original = original[:start] + encoded + original[end:]
    path.write_text(original, encoding="utf-8")


def main():
    for category, (questions, answers) in DATA.items():
        if len(questions) != len(answers):
            raise ValueError(f"{category}: question/answer data length mismatch")
        folder, filename = FILES[category]
        localized_files = {
            locale: QUESTION_ROOT / folder / f"{filename}_{locale}.json"
            for locale in LOCALES
        }
        banks = {
            locale: json.loads(path.read_text(encoding="utf-8"))
            for locale, path in localized_files.items()
        }
        replacement_keys = {normalize(question) for question in questions}
        slots_by_locale = {}
        set_counts = {}

        for locale, items in banks.items():
            if len(items) != len(banks["en"]):
                raise ValueError(f"{localized_files[locale]}: record count differs from English")
            seen = set()
            slots = {set_number: [] for set_number in range(1, 6)}
            counts = {set_number: 0 for set_number in range(1, 6)}
            for index, item in enumerate(items):
                set_number = item["set"]
                counts[set_number] += 1
                key = normalize(item["question"])
                if key in replacement_keys:
                    slots[set_number].append(index)
                    seen.add(key)
                elif key in seen:
                    slots[set_number].append(index)
                else:
                    seen.add(key)
            if set(counts.values()) != {25}:
                raise ValueError(f"{localized_files[locale]}: each set must contain 25 questions")
            slots_by_locale[locale] = slots
            set_counts[locale] = {key: len(value) for key, value in slots.items()}

        for set_number in range(1, 6):
            counts = {set_counts[locale][set_number] for locale in LOCALES}
            if len(counts) != 1:
                raise ValueError(f"{category} set {set_number}: locale duplicate counts differ")

        replacement_count = sum(set_counts["en"].values())
        if replacement_count > len(questions):
            raise ValueError(
                f"{category}: need {replacement_count} replacements, "
                f"only {len(questions)} supplied"
            )

        position = 0
        for set_number in range(1, 6):
            slot_indices = {
                locale: sorted(slots_by_locale[locale][set_number])
                for locale in LOCALES
            }
            slot_count = len(slot_indices["en"])
            for locale in LOCALES:
                if len(slot_indices[locale]) != slot_count:
                    raise ValueError(f"{category} set {set_number}: locale slot counts differ")
                for offset, index in enumerate(slot_indices[locale]):
                    replacement_position = position + offset
                    answer = answers[replacement_position]
                    distractors = [value for value in answers if value != answer][:3]
                    items = banks[locale]
                    items[index]["question"] = questions[replacement_position]
                    items[index]["options"] = [answer, *distractors]
                    items[index]["answer"] = answer
            position += slot_count

        for locale, items in banks.items():
            normalized = [normalize(item["question"]) for item in items]
            if len(normalized) != len(set(normalized)):
                raise ValueError(f"{localized_files[locale]}: repeated questions remain")
            write_preserving_layout(localized_files[locale], items)

        print(f"{category}: replaced {replacement_count} repeated entries")


if __name__ == "__main__":
    main()