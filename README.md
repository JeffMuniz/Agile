# Deploy com Estratégia Blue-Green + Canary com Istio, ArgoCD e Calico na pasta Canary-Calico-Istio-Argocd

## Objetivo

Este ambiente demonstra um pipeline completo de deploy contínuo com validação progressiva, rollback seguro e controle de tráfego inteligente, combinando as estratégias Blue-Green e Canary em um cluster Kubernetes com Istio, ArgoCD e Calico para política de rede.

## Componentes Utilizados

- Istio: malha de serviço com suporte a VirtualService e DestinationRule
- ArgoCD: controle GitOps para deploy contínuo declarativo
- Calico: isolamento e política de rede entre pods
- Prometheus/Grafana: stack de monitoramento de aplicações e serviços
- Aplicações: duas versões (v1 e v2) com deploys separados para simular fluxo canário

## Visão Geral

Este projeto demonstra um pipeline Kubernetes completo com deploy contínuo, validação progressiva, rollback seguro e isolamento de rede. A estratégia combina os padrões **Blue-Green**, **Canary** e **GitOps**, utilizando ferramentas modernas como **Istio**, **ArgoCD**, **Calico**, **Prometheus** e **Grafana**.

## Componentes Presentes

|--------------------------|--------------------------------------------------------|

| Recurso                  | Status                                                |
|--------------------------|--------------------------------------------------------|
| Deploy Blue-Green        | deployment.yaml, deployment-v2.yaml                   |
| Deploy Canary            | virtual-service.yaml com DestinationRule              |
| Istio                    | Roteamento, subsets, rollback e split de tráfego      |
| ArgoCD                   | application-argocd.yaml com suporte a kustomization   |
| Prometheus + Grafana     | Dashboard pronto: dashboard-grafana-prometheus.json   |
| Calico                   | Regras aplicadas via network-policy.yaml              |
| Rollback seguro          | Documentado via kubectl patch                         |
| GitOps/Kustomize         | Estrutura pronta para sync declarativo                |
| README                   | Finalizado com explicação, comandos e instruções      |
|--------------------------|--------------------------------------------------------|

Deseja que eu atualize o arquivo final e envie como `.zip` com essa nova seção também incluída?

## Estrutura de Arquivos

```bash
.
├── deployment.yaml                     # Versão Blue (v1)
├── deployment-v2.yaml                  # Versão Green (v2)
├── destination-rule.yaml               # Define os subsets v1/v2
├── virtual-service.yaml                # Controla roteamento de tráfego por peso
├── application-argocd.yaml             # Define aplicação para sync no ArgoCD
├── dashboard-grafana-prometheus.json   # Dashboard customizado para observabilidade
├── network-policy.yaml                 # Política de rede via Calico
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
- Calico: segurança e isolamento de tráfego pod a pod

Ideal para ambientes que exigem alta confiabilidade, testes controlados e rollback imediato com baixo impacto.
