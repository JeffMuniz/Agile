# Deploy com Estratégia Blue-Green + Canary com Istio e ArgoCD na pasta Canary-Calico-Istio-Argocd

## Objetivo

Este ambiente demonstra um pipeline completo de deploy contínuo com validação progressiva, rollback seguro e controle de tráfego inteligente, combinando as estratégias Blue-Green e Canary em um cluster Kubernetes com Istio e ArgoCD.

## Componentes Utilizados

- Istio: malha de serviço com suporte a VirtualService e DestinationRule
- ArgoCD: controle GitOps para deploy contínuo declarativo
- Prometheus/Grafana: stack de monitoramento de aplicações e serviços
- Aplicações: duas versões (v1 e v2) com deploys separados para simular fluxo canário

## Estrutura de Arquivos

```bash
.
├── deployment.yaml                     # Versão Blue (v1)
├── deployment-v2.yaml                  # Versão Green (v2)
├── destination-rule.yaml               # Define os subsets v1/v2
├── virtual-service.yaml                # Controla roteamento de tráfego por peso
├── application-argocd.yaml             # Define aplicação para sync no ArgoCD
├── dashboard-grafana-prometheus.json   # Dashboard customizado para observabilidade
├── network-policy.yaml                 # Regras de acesso via Calico
├── kustomization.yaml                  # Suporte a Kustomize para ArgoCD
└── README.md
```

## Como Aplicar no Cluster

Execute os manifestos manualmente:

```bash
kubectl apply -f deployment.yaml
kubectl apply -f deployment-v2.yaml
kubectl apply -f destination-rule.yaml
kubectl apply -f virtual-service.yaml
kubectl apply -f network-policy.yaml
kubectl apply -f application-argocd.yaml
```

Ou configure via Kustomize + ArgoCD se preferir GitOps completo.

## Observabilidade com Grafana

Acesse o Grafana e importe o dashboard localizado em:

`dashboard-grafana-prometheus.json`

Métricas monitoradas:

- Latência por versão (v1, v2)
- Taxa de erro por rota
- Percentual de tráfego roteado por subset

## Rollback Seguro

Para redirecionar 100% do tráfego de volta para a versão v1, use:

```bash
kubectl patch virtualservice my-app \
  -p '{"spec":{"http":[{"route":[{"destination":{"host":"my-app","subset":"v1"},"weight":100}]}]}}' \
  --type=merge
```

## Estratégias Combinadas

- Blue-Green: deploy paralelo com tráfego 100% em uma versão
- Canary: shift progressivo com validação de métricas
- GitOps: controle de estado via repositório Git

Ideal para ambientes que exigem alta confiabilidade, testes controlados e rollback imediato com baixo impacto.
