# Explicações/Pensamentos

## Configuração Inicial do Ambiente

### Arquitetura da Aplicação
Inicialmente, decidi adotar uma arquitetura simples para a aplicação de Comentários em versão API. Optei por uma abordagem baseada em microsserviços, com um único serviço responsável por gerenciar os comentários. Essa escolha foi feita levando em consideração a modularidade, escalabilidade e facilidade de manutenção.

### Tecnologias Utilizadas
**DockerFile**: Utilizei o Docker para facilitar o processo de empacotamento e distribuição da aplicação. O DockerFile é responsável por definir os passos necessários para criar uma imagem Docker contendo a aplicação.

**Kubernetes no GCP**: Escolhi o Kubernetes como plataforma de orquestração de contêineres devido ao seu pré-requisito no desafio e por suas características de escalabilidade, resiliência e facilidade de gerenciamento. Inicialmente, utilizei o Minikube para desenvolvimento local e, posteriormente, migrei para um cluster Kubernetes no Google Cloud Platform (GCP) para simular um ambiente de produção.

**Grafana e Prometheus**: Para monitoramento e métricas da aplicação, integramos o Grafana e o Prometheus ao ambiente construido. O Prometheus é responsável por coletar métricas da aplicação e o Grafana fornece visualizações e dashboards para análise e monitoramento em tempo real.

## Pensamentos
- A ideia inical é colocar para rodar dentro de um container
- Após a ideia inicial ser feita já coloquei pra rodar em um cluster Kubernetes usando um Minikube local
- Agora que eu tenho um cluster Kubernetes onde a aplicação principal esta rodando, coloquei um grafana para rodar dentro deste cluster
- O proximo passo é implementar o Prometheus para assim exportar as metricas da aplicação dentro do Grafana
- Grafana e Prometheus foram implementados e estão rodando dentro do cluster
- Futuramente quero implementar o zabbix como ferramenta central de monitoramento, gerando assim alertas caso seja identificado erros que estão vindo do Prometheus.
- O meu próximo passo seria, criar a pipeline CI/CD com Github Actions, mas ainda estou ponderando sobre como realizar a construção da pipeline. Acredito que devo focar na construção do CI/CD para a API, em vez de querer integrar todos os serviços como Grafana, Prometheus e Minikube de uma vez em um É por isso que estava demorando um pouco para progredir, pois ainda não havia definido o caminho a seguir.
- Buscando deixar o mais proximo de um ambiente de produção, estou subindo um cluster kubernetes no GCP (vou subir manualmente de inicio, pois nunca utilizei o GCP)
- Apos eu conseguir subir o cluster e realizar o deploy da aplicação dentro dele, eu atualizo a parte das tecnologias utilizadas
- Foi realizada com sucesso a criação do cluster Kubernetes dentro do GCP
- Planejo realizar a criação da rota de status que retorne o texto “ok”;