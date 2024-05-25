module github.com/elastic/beats/v7

go 1.18

require (
	cloud.google.com/go/monitoring v1.15.1 // indirect
	cloud.google.com/go/pubsub v1.32.0 // indirect
	github.com/Azure/azure-sdk-for-go v59.0.0+incompatible
	github.com/Azure/go-ansiterm v0.0.0-20210617225240-d185dfc1b5a1 // indirect
	github.com/Azure/go-autorest/autorest v0.11.19 // indirect
	github.com/Azure/go-autorest/autorest/azure/auth v0.4.2
	github.com/Azure/go-autorest/autorest/date v0.3.0
	github.com/Microsoft/go-winio v0.5.2
	github.com/Shopify/sarama v1.27.0
	github.com/StackExchange/wmi v1.2.1
	github.com/aerospike/aerospike-client-go v1.27.1-0.20170612174108-0f3b54da6bdc
	github.com/andrewkroh/sys v0.0.0-20151128191922-287798fe3e43
	github.com/armon/go-socks5 v0.0.0-20160902184237-e75332964ef5
	github.com/aws/aws-lambda-go v1.13.3
	github.com/aws/aws-sdk-go-v2 v1.16.6
	github.com/aws/aws-sdk-go-v2/service/cloudwatch v1.18.2
	github.com/aws/aws-sdk-go-v2/service/ec2 v1.36.1
	github.com/aws/aws-sdk-go-v2/service/elasticloadbalancingv2 v1.18.4
	github.com/aws/aws-sdk-go-v2/service/iam v1.18.4
	github.com/aws/aws-sdk-go-v2/service/rds v1.20.1
	github.com/aws/aws-sdk-go-v2/service/resourcegroupstaggingapi v1.13.5
	github.com/aws/aws-sdk-go-v2/service/s3 v1.26.12
	github.com/aws/aws-sdk-go-v2/service/sqs v1.18.4
	github.com/aws/aws-sdk-go-v2/service/sts v1.16.8
	github.com/awslabs/goformation/v4 v4.1.0 // indirect
	github.com/blakesmith/ar v0.0.0-20150311145944-8bd4349a67f2
	github.com/bsm/sarama-cluster v2.1.14-0.20180625083203-7e67d87a6b3f+incompatible
	github.com/cavaliercoder/badio v0.0.0-20160213150051-ce5280129e9e // indirect
	github.com/cavaliercoder/go-rpm v0.0.0-20190131055624-7a9c54e3d83e
	github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f
	github.com/davecgh/go-xdr v0.0.0-20161123171359-e6a2ba005892 // indirect
	github.com/denisenkom/go-mssqldb v0.9.0
	github.com/digitalocean/go-libvirt v0.0.0-20180301200012-6075ea3c39a1
	github.com/docker/docker v24.0.9+incompatible
	github.com/docker/go-connections v0.4.0
	github.com/docker/go-units v0.4.0 // indirect
	github.com/dop251/goja v0.0.0-20200831102558-9af81ddcf0e1
	github.com/dop251/goja_nodejs v0.0.0-20171011081505-adff31b136e6
	github.com/dustin/go-humanize v1.0.0
	github.com/eapache/go-resiliency v1.2.0 // indirect
	github.com/elastic/go-lookslike v0.3.0
	github.com/elastic/go-lumber v0.1.2-0.20220819171948-335fde24ea0f
	github.com/elastic/go-perf v0.0.0-20191212140718-9c656876f595
	github.com/elastic/go-seccomp-bpf v1.2.0
	github.com/elastic/go-structform v0.0.10
	github.com/elastic/go-sysinfo v1.8.1
	github.com/elastic/go-ucfg v0.8.6
	github.com/elastic/go-windows v1.0.1 // indirect
	github.com/elastic/gosigar v0.14.2
	github.com/fatih/color v1.13.0
	github.com/fsnotify/fsevents v0.1.1
	github.com/fsnotify/fsnotify v1.5.1
	github.com/go-ole/go-ole v1.2.6 // indirect
	github.com/go-sourcemap/sourcemap v2.1.2+incompatible // indirect
	github.com/go-sql-driver/mysql v1.6.0
	github.com/gocarina/gocsv v0.0.0-20170324095351-ffef3ffc77be
	github.com/godbus/dbus v0.0.0-20190422162347-ade71ed3457e // indirect
	github.com/gofrs/flock v0.8.1 // indirect
	github.com/gofrs/uuid v4.2.0+incompatible
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/protobuf v1.5.3
	github.com/golang/snappy v0.0.4
	github.com/google/flatbuffers v2.0.8+incompatible
	github.com/google/go-cmp v0.5.9 // indirect
	github.com/google/gopacket v1.1.19
	github.com/google/uuid v1.3.0 // indirect
	github.com/gorhill/cronexpr v0.0.0-20180427100037-88b0669f7d75
	github.com/insmachinaacslk/dhcp v0.0.0-20180716145214-633285ba52b2
	github.com/jmoiron/sqlx v1.3.1 // indirect
	github.com/joeshaw/multierror v0.0.0-20140124173710-69b34d4ec901
	github.com/lib/pq v1.10.3
	github.com/magefile/mage v1.13.0
	github.com/mattn/go-colorable v0.1.12
	github.com/matttproud/golang_protobuf_extensions v1.0.4 // indirect
	github.com/miekg/dns v1.1.42
	github.com/mitchellh/hashstructure v0.0.0-20170116052023-ab25296c0f51
	github.com/mitchellh/mapstructure v1.4.3
	github.com/opencontainers/go-digest v1.0.0 // indirect
	github.com/opencontainers/image-spec v1.1.0-rc2.0.20221005185240-3a7f492d3f1b // indirect
	github.com/pkg/errors v0.9.1
	github.com/pmezard/go-difflib v1.0.0
	github.com/prometheus/client_model v0.3.0
	github.com/prometheus/common v0.30.0
	github.com/prometheus/procfs v0.7.3
	github.com/rcrowley/go-metrics v0.0.0-20201227073835-cf1acfcdf475
	github.com/samuel/go-parser v0.0.0-20130731160455-ca8abbf65d0e // indirect
	github.com/samuel/go-thrift v0.0.0-20140522043831-2187045faa54
	github.com/sanathkr/yaml v1.0.1-0.20170819201035-0056894fa522 // indirect
	github.com/spf13/cobra v1.3.0
	github.com/spf13/pflag v1.0.5
	github.com/stretchr/testify v1.8.4
	github.com/vmware/govmomi v0.0.0-20170802214208-2cad15190b41
	go.elastic.co/ecszap v1.0.1 // indirect
	go.uber.org/atomic v1.9.0
	go.uber.org/multierr v1.8.0
	go.uber.org/zap v1.21.0
	golang.org/x/crypto v0.17.0
	golang.org/x/net v0.17.0
	golang.org/x/oauth2 v0.10.0 // indirect
	golang.org/x/sync v0.3.0 // indirect
	golang.org/x/sys v0.15.0
	golang.org/x/text v0.14.0
	golang.org/x/time v0.3.0
	golang.org/x/tools v0.7.0
	google.golang.org/api v0.126.0 // indirect
	google.golang.org/genproto v0.0.0-20230711160842-782d3b101e98 // indirect
	google.golang.org/grpc v1.58.3 // indirect
	google.golang.org/protobuf v1.33.0 // indirect
	gopkg.in/inf.v0 v0.9.1
	gopkg.in/yaml.v2 v2.4.0
	howett.net/plist v1.0.0
	k8s.io/api v0.23.4
	k8s.io/apimachinery v0.23.4
	k8s.io/client-go v0.23.4
)

require (
	4d63.com/tz v1.2.0
	github.com/OneOfOne/xxhash v1.2.2
	github.com/aws/aws-sdk-go-v2/service/cloudformation v1.20.4
	github.com/awslabs/goformation v1.4.1
	github.com/coreos/bbolt v1.3.2
	github.com/coreos/go-systemd v0.0.0-20190321100706-95778dfbb74e
	github.com/elastic/beats v7.6.2+incompatible
	github.com/elastic/elastic-agent-libs v0.2.11
	github.com/elastic/go-libaudit v0.4.0
	github.com/elastic/go-txfile v0.0.8
	github.com/garyburd/redigo v0.0.0-20150301180006-535138d7bcd7
	github.com/jstemmer/go-junit-report v0.9.1
	github.com/shirou/gopsutil v3.21.11+incompatible
	github.com/theckman/go-flock v0.8.1
	github.com/tsg/gopacket v0.0.0-20200626092518-2ab8e397a786
	gopkg.in/goracle.v2 v2.24.1
	gopkg.in/mgo.v2 v2.0.0-20190816093944-a6b53ec6cb22
)

require (
	4d63.com/embedfiles v0.0.0-20190311033909-995e0740726f // indirect
	cloud.google.com/go v0.110.4 // indirect
	cloud.google.com/go/compute v1.21.0 // indirect
	cloud.google.com/go/compute/metadata v0.2.3 // indirect
	cloud.google.com/go/functions v1.15.1 // indirect
	cloud.google.com/go/iam v1.1.1 // indirect
	cloud.google.com/go/storage v1.30.1 // indirect
	github.com/Azure/go-autorest v14.2.0+incompatible // indirect
	github.com/Azure/go-autorest/autorest/adal v0.9.14 // indirect
	github.com/Azure/go-autorest/autorest/azure/cli v0.3.1 // indirect
	github.com/Azure/go-autorest/autorest/to v0.4.0 // indirect
	github.com/Azure/go-autorest/autorest/validation v0.3.1 // indirect
	github.com/Azure/go-autorest/logger v0.2.1 // indirect
	github.com/Azure/go-autorest/tracing v0.6.0 // indirect
	github.com/aws/aws-sdk-go-v2/aws/protocol/eventstream v1.4.3 // indirect
	github.com/aws/aws-sdk-go-v2/internal/configsources v1.1.13 // indirect
	github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 v2.4.7 // indirect
	github.com/aws/aws-sdk-go-v2/internal/v4a v1.0.4 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/accept-encoding v1.9.3 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/checksum v1.1.8 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.9.7 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/s3shared v1.13.7 // indirect
	github.com/aws/smithy-go v1.12.0 // indirect
	github.com/cespare/xxhash v1.1.0 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/dimchansky/utfbom v1.1.0 // indirect
	github.com/dlclark/regexp2 v1.4.0 // indirect
	github.com/docker/distribution v2.8.2+incompatible // indirect
	github.com/eapache/go-xerial-snappy v0.0.0-20180814174437-776d5712da21 // indirect
	github.com/eapache/queue v1.1.0 // indirect
	github.com/form3tech-oss/jwt-go v3.2.3+incompatible // indirect
	github.com/go-kit/kit v0.10.0 // indirect
	github.com/go-logfmt/logfmt v0.5.1 // indirect
	github.com/go-logr/logr v1.2.3 // indirect
	github.com/golang-sql/civil v0.0.0-20190719163853-cb61b32ac6fe // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/google/gofuzz v1.2.0 // indirect
	github.com/google/s2a-go v0.1.4 // indirect
	github.com/googleapis/enterprise-certificate-proxy v0.2.3 // indirect
	github.com/googleapis/gax-go/v2 v2.11.0 // indirect
	github.com/googleapis/gnostic v0.5.5 // indirect
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/hashicorp/go-uuid v1.0.2 // indirect
	github.com/imdario/mergo v0.3.12 // indirect
	github.com/inconshreveable/mousetrap v1.0.0 // indirect
	github.com/jcmturner/aescts/v2 v2.0.0 // indirect
	github.com/jcmturner/dnsutils/v2 v2.0.0 // indirect
	github.com/jcmturner/gofork v1.0.0 // indirect
	github.com/jcmturner/gokrb5/v8 v8.4.2 // indirect
	github.com/jcmturner/rpc/v2 v2.0.3 // indirect
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/klauspost/compress v1.15.9 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/mitchellh/go-homedir v1.1.0 // indirect
	github.com/moby/term v0.0.0-20210610120745-9d4ed1856297 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/morikuni/aec v1.0.0 // indirect
	github.com/onsi/gomega v1.10.3 // indirect
	github.com/pierrec/lz4 v2.6.0+incompatible // indirect
	github.com/sanathkr/go-yaml v0.0.0-20170819195128-ed9d249f429b // indirect
	github.com/sirupsen/logrus v1.9.3 // indirect
	github.com/spaolacci/murmur3 v1.1.0 // indirect
	github.com/stretchr/objx v0.5.0 // indirect
	github.com/urso/go-bin v0.0.0-20180220135811-781c575c9f0e // indirect
	github.com/urso/magetools v0.0.0-20190919040553-290c89e0c230 // indirect
	github.com/yuin/gopher-lua v0.0.0-20170403160031-b402f3114ec7 // indirect
	github.com/yusufpapurcu/wmi v1.2.2 // indirect
	go.etcd.io/bbolt v1.3.7 // indirect
	go.opencensus.io v0.24.0 // indirect
	go.uber.org/goleak v1.1.12 // indirect
	golang.org/x/term v0.15.0 // indirect
	golang.org/x/xerrors v0.0.0-20220907171357-04be3eba64a2 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20230711160842-782d3b101e98 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20230711160842-782d3b101e98 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	gotest.tools/v3 v3.5.0 // indirect
	k8s.io/klog/v2 v2.30.0 // indirect
	k8s.io/kube-openapi v0.0.0-20211115234752-e816edb12b65 // indirect
	k8s.io/utils v0.0.0-20211116205334-6203023598ed // indirect
	sigs.k8s.io/json v0.0.0-20211020170558-c049b76a60c6 // indirect
	sigs.k8s.io/structured-merge-diff/v4 v4.2.1 // indirect
	sigs.k8s.io/yaml v1.2.0 // indirect
)

replace (
	github.com/Azure/azure-sdk-for-go => github.com/elastic/azure-sdk-for-go v59.0.0-elastic-1+incompatible
	github.com/Microsoft/go-winio => github.com/bi-zone/go-winio v0.4.15
	github.com/Shopify/sarama => github.com/elastic/sarama v1.19.1-0.20220310193331-ebc2b0d8eef3
	github.com/apoydence/eachers => github.com/poy/eachers v0.0.0-20181020210610-23942921fe77 //indirect, see https://github.com/elastic/beats/pull/29780 for details.
	github.com/cucumber/godog => github.com/cucumber/godog v0.8.1
	github.com/dgraph-io/ristretto => github.com/elastic/ristretto v0.1.1-0.20220602190459-83b0895ca5b3 // Removes glog dependency. See https://github.com/elastic/beats/issues/31810.
	github.com/docker/go-plugins-helpers => github.com/elastic/go-plugins-helpers v0.0.0-20200207104224-bdf17607b79f
	github.com/dop251/goja => github.com/andrewkroh/goja v0.0.0-20190128172624-dd2ac4456e20
	github.com/dop251/goja_nodejs => github.com/dop251/goja_nodejs v0.0.0-20171011081505-adff31b136e6
	github.com/fsnotify/fsevents => github.com/elastic/fsevents v0.0.0-20181029231046-e1d381a4d270
	github.com/fsnotify/fsnotify => github.com/adriansr/fsnotify v1.4.8-0.20211018144411-a81f2b630e7c
	github.com/godror/godror => github.com/godror/godror v0.33.2 // updating to v0.24.2 caused a breaking change
	github.com/golang/glog => github.com/elastic/glog v1.0.1-0.20210831205241-7d8b5c89dfc4
	github.com/google/gopacket => github.com/elastic/gopacket v1.1.20-0.20211202005954-d412fca7f83a
	github.com/insmachinaacslk/dhcp => github.com/elastic/dhcp v0.0.0-20200227161230-57ec251c7eb3 // indirect
	github.com/tonistiigi/fifo => github.com/containerd/fifo v0.0.0-20190816180239-bda0ff6ed73c
)

// Exclude this version because the version has an invalid checksum.
exclude github.com/docker/distribution v2.8.0+incompatible
