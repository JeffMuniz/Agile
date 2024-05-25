
NEW_RELIC_API_KEY='my-api-key'
NEW_RELIC_ACCOUNT_ID='nra-id'

RUN curl -Ls https://raw.githubusercontent.com/newrelic/newrelic-cli/master/scripts/install.sh | bash && \
sudo NEW_RELIC_API_KEY=my-api-key NEW_RELIC_ACCOUNT_ID=nra-id /usr/local/bin/newrelic install -n java-agent-installer




/opt/apache-maven-3.6.3/bin/mvn package && \
docker build --file Dockerfile --pull -t localhost:init-neo --no-cache . && \
$APP = 'docker image ls 'docker run -d -p 8080:80 "$APP"



$LICENSE_KEY="my-api-key"; `
(New-Object System.Net.WebClient).DownloadFile("https://download.newrelic.com/infrastructure_agent/windows/newrelic-infra.msi", "$env:TEMP\newrelic-infra.msi"); `
msiexec.exe /qn /i "$env:TEMP\newrelic-infra.msi" GENERATE_CONFIG=true LICENSE_KEY="$LICENSE_KEY" | Out-Null; `
net start newrelic-infra


msiexec.exe /qn /i .\newrelic-infra.msi GENERATE_CONFIG=true LICENSE_KEY=YOUR_LICENSE_KEY PROXY=http://localhost:80


jeff license_key
my-api-key

mvn package && docker build --file Dockerfile --pull -t localhost:init-neo --no-cache .