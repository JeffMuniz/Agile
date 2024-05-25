

#aws
setx AWS_ACCESS_KEY_ID aws_access_key_id=SOME-KEY-ID
setx AWS_SECRET_ACCESS_KEY aws_secret_access_key=SOME-TOKEN
aws login
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV)
 curl http://169.254.169.254/latest/meta-data/iam/security-credentials
aws iam list-users
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV) 
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV) 
aws iam list-users --profile profile-quality
aws configure
aws configure --profile profile-production
aws ec2-instance-connect send-ssh-public-key --ssh-public-key profile-production --instance-id  SOME-TOKEN
aws ec2-instance-connect send-ssh-public-key  --instance-id  SOME-TOKEN
aws ec2-instance-connect --instance-id cluster-eks-$(ENV) --instance-id cluster-eks-$(ENV)
aws eks list-clusters --profile profile-production
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV) --profile .\profile-production
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV) --profile .\profile-quality
ping  10.133.37.85
telnet 10.133.37.85:9092
telnet 10.133.37.85 9092
telnet 10.133.37.85 9093
telnet machina-kafka 9093
telnet machina-kafka 443

unset AWS_DEFAULT_PROFILE
unset AWS_SESSION_TOKEN
setx AWS_SECRET_ACCESS_KEY aws_secret_access_key=SOME-TOKEN
unsetx AWS_SECRET_ACCESS_KEY aws_secret_access_key=SOME-TOKEN
REG delete HKCU\Environment /F /V FOOBAR
REG delete HKCU\Environment /F /V AWS_SECRET_ACCESS_KEY 
REG delete HKCU\Environment /F /V AWS_ACCESS_KEY_ID 


#kubectl

kubectl get ns
kubectl get nm -A
kubectl get namespace -A
kubectl get pod -A |grep post
kubectl config get-contexts
kubectl cp .\postgres_data-sender.tar.gz   pod-postgresql-0\postgres_data-sender.tar.gz
kubectl config get-contexts
kubectl  -it prometheus-pgsql   -n machina-pg sh
kubectl  -it postgresql-backup-node-0   -n machina-pg sh
kubectl  -it kafka-zookeeper  -n machina-kafka sh
kubectl  -it pod-postgresql-0   -n machina-postgres sh
kubectl  -it kafka-zookeeper  -n machina-kafka sh
kubectl  -it prometheus-pgsql-76b569bb59-swvnb  -n machina-pg sh
kubectl  -it pod-postgresql-0   -n machina-pg sh
kubectl  -it postgresql-backup-node-0   -n machina-pg sh
kubectl port-forward svc/prometheus-kube -n telemetry 9090
kubectl port-forward svc/prometheus-grafana 3000:80 -n telemetry
kubectl -n machina logs -f deployment/machina-pod1 --all-containers=true --since=10m
kubectl get gateways.networking.istio.io -A
kubectl get secret cloud-es-elastic-user -n machina-es -o=jsonpath='{.data.elastic}' | base64 --decode; echo
kubectl port-forward svc/prometheus-grafana 3000:80 -n telemetry
export POD_NAME=$(kubectl get pods --namespace default -l "app=prometheus-pgsql,release=prometheus-pgsql-1619920850" -o jsonpath="{.items[0].metadata.name}")
export POD_NAME=$(kubectl get pods --namespace default -l "app=prometheus-pgsql,release=prometheus-pgsql-1619920850" -o jsonpath="{.items[0].metadata.name}")
export POD_NAME=$(kubectl get pods --namespace machina-pg -l "app=prometheus-pgsql,release=prometheus-pgsql" -o jsonpath="{.items[0].metadata.name}")
  echo "Visit http://127.0.0.1:8080 to use your application"
  kubectl port-forward $POD_NAME 8080:80
set POD_NAME=$(kubectl get pods --namespace machina-pg -l "app=prometheus-pgsql,release=prometheus-pgsql" -o jsonpath="{.items[0].metadata.name}")
kubectl get dc
kubectl get deployments
kubectl get deployments -n machina-pg
kubectl patch deployment prometheus-pgsql --type=json -p='[{"op": "remove", "path": "/spec/selector/matchLabels/chart"}]'
kubectl patch deployment prometheus-pgsql --type=json -p='[{"op": "remove", "path": "/spec/selector/matchLabels/chart"}]' -n machina-pg


#helm   
helm show values prometheus-community/prometheus-pgsql | grep database
helm show values prometheus-community/prometheus-pgsql >> values.yaml
echo '{mariadb.auth.database: user0db, mariadb.auth.username: user0}' > values.yaml
 helm install -f values.yaml bitnami/wordpress --generate-name
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus-pgsql prometheus-community/prometheus-pgsql --version 1.0 -n machina-pg
  export POD_NAME=$(kubectl get pods --namespace machina-pg -l "app=prometheus-postgres-exporrter,release=prometheus-pgsql" -o jsonpath="{.items[0].metadata.name}")
  echo "Visit http://127.0.0.1:8080 to use your application"
  kubectl port-forward $POD_NAME 8080:80
kubectl get pod -A |grep post
helm install prometheus-pgsql prometheus-community/prometheus-pgsql --version 1.0 -n machina-pg
  export POD_NAME=$(kubectl get pods --namespace machina-pg -l "app=prometheus-postgres-exporrter,release=prometheus-pgsql" -o jsonpath="{.items[0].metadata.name}")
  echo "Visit http://127.0.0.1:8080 to use your application"
  kubectl port-forward $POD_NAME 8080:80
aws ec2-instance-connect send-ssh-public-key --ssh-public-key profile-production
helm list prometheus-pgsql
helm list --all
helm list --failed
helm list --all-namespaces
helm show values prometheus-community/prometheus-pgsql | grep 9187
helm status postgres-exporter
helm status postgres-data-sender
helm status prometheus-community/prometheus-pgsql
helm status prometheus-pgsql/prometheus-pgsql-869b456wpwk 
helm status  prometheus-pgsql
helm install prometheus-community/prometheus-pgsql --version 1.0 -n machina-pg
helm install prometheus-pgsql prometheus-community/prometheus-pgsql --version 1.0 -n machina-pg
kubectl port-forward $POD_NAME 8080:80
  echo "Visit http://127.0.0.1:8080 to use your application"
helm status -76b569bb59-swvnb
helm status prometheus-pgsql
helm uninstall prometheus-pgsql  -n machina-pg
helm uninstall prometheus-community/prometheus-pgsql --version 1.0 --generate-name
helm uninstall prometheus-pgsql-1619920850-648bc84768-fb6cl  -n default
helm uninstall prometheus-pgsql  -n machina-pg



#wsl
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-VirtualMachinePlatform
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1604 -OutFile Ubuntu.appx -UseBasicParsing
Add-AppxPackage .\Ubuntu_2004.2020.424.0_x64.appx
Add-AppxPackage .\Ubuntu.appx
wsl --set-default-version 2
wsl.exe --install ubuntu
wsl --list --online
wsl --install -d ubuntu





#backlog

aws ec2-instance-connect --instance-id  SOME-TOKEN
 aws ec2-instance-connect --instance-id cluster-eks-$(ENV) --instance-id cluster-eks-$(ENV)
aws ec2-instance-connect --instance-id cluster-eks-$(ENV)
aws ec2-instance-connect --instance-id cluster-eks-$(ENV)
 
aws eks list-clusters
setx AWS_ACCESS_KEY_ID aws_access_key_id=SOME-KEY-ID
setx AWS_SECRET_ACCESS_KEY aws_secret_access_key=


  
setx AWS_SECRET_ACCESS_KEY aws_secret_access_key=SOME-TOKEN
aws login
aws
aws help


aws ec2-instance-connect send-ssh-public-key --ssh-public-key profile-production 
aws ec2-instance-connect send-ssh-public-key --ssh-public-key profile-production --instance-id  SOME-TOKEN
 
setx AWS_ACCESS_KEY_ID aws_access_key_id=SOME-KEY-ID



aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV) 
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV) 
  
 
 
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV) 
   

aws iam list-users
aws iam list-users --profile profile-quality
 
 
aws iam list-users --profile 

aws eks list-clusters --profile profile-production
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV)

aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV) --profile profile-production
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV) --profile .\profile-quality
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV) --profile profile-production

 unset AWS_DEFAULT_PROFILE
 
 
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV)
 curl http://169.254.169.254/latest/meta-data/iam/security-credentials
aws iam list-users
 
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV) 
aws get-session-token
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV) 


#aws
setx AWS_ACCESS_KEY_ID aws_access_key_id=SOME-KEY-ID
setx AWS_SECRET_ACCESS_KEY aws_secret_access_key=SOME-TOKEN
aws login
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV)
 curl http://169.254.169.254/latest/meta-data/iam/security-credentials
aws iam list-users
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV) 
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV) 
aws iam list-users --profile profile-quality
aws configure
aws configure --profile profile-production
aws ec2-instance-connect send-ssh-public-key --ssh-public-key profile-production --instance-id  SOME-TOKEN
aws ec2-instance-connect send-ssh-public-key  --instance-id  SOME-TOKEN
aws ec2-instance-connect --instance-id cluster-eks-$(ENV) --instance-id cluster-eks-$(ENV)
aws eks list-clusters --profile profile-production
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV) --profile .\profile-production
aws eks --region us-east-1 update-kubeconfig --name cluster-eks-$(ENV) --profile .\profile-quality
ping  10.133.37.85
telnet 10.133.37.85:9092
telnet 10.133.37.85 9092
telnet 10.133.37.85 9093
telnet machina-kafka 9093
telnet machina-kafka 443

unset AWS_DEFAULT_PROFILE
unset AWS_SESSION_TOKEN
setx AWS_SECRET_ACCESS_KEY aws_secret_access_key=SOME-TOKEN
unsetx AWS_SECRET_ACCESS_KEY aws_secret_access_key=SOME-TOKEN
REG delete HKCU\Environment /F /V FOOBAR
REG delete HKCU\Environment /F /V AWS_SECRET_ACCESS_KEY 
REG delete HKCU\Environment /F /V AWS_ACCESS_KEY_ID 

