# Execução de Testes UI com Callisto + Kubernetes

Este projeto pode ser expandido para incluir testes automatizados de interface (UI) via Selenium, usando o **Callisto**, uma solução moderna e escalável nativa para Kubernetes.

## Componentes Utilizados

- **Callisto**: Gerenciador de sessões Selenium usando pods efêmeros
- **ArgoCD**: Deploy contínuo de aplicações e testes
- **Istio**: Gestão de tráfego canário para testes seguros
- **Grafana/Prometheus**: Observabilidade de falhas de interface e erro 5xx

## Diagrama

Usuário → [ ArgoCD Pipeline ] → Callisto Pod (Browser + WebDriver)  
                    → Envia resultados para Prometheus  
                    → Exibe dashboards com taxa de sucesso por versão v1/v2

## Exemplo de Integração

1. Adicionar Callisto via Helm Chart:
```bash
helm repo add wrike https://charts.wrike.tech
helm install callisto wrike/callisto
```

2. Disparar testes Selenium em paralelo ao deploy v2:
```bash
kubectl exec -it callisto-core -- curl http://my-app-v2/test/login
```

3. Monitorar erros no dashboard e decidir:
- Expandir v2 (se sucesso)
- Rollback automático (se taxa de erro exceder SLO)

## Repositório Original

- https://github.com/wrike/callisto