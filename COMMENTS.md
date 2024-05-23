# Explicações/Pensamentos

## Configuração Inicial do Ambiente

### Arquitetura da Aplicação
Inicialmente, decidi adotar uma arquitetura simples para a aplicação de Comentários em versão API. Optei por uma abordagem baseada em microsserviços, com um único serviço responsável por gerenciar os comentários. Essa escolha foi feita levando em consideração a modularidade, escalabilidade e facilidade de manutenção.

### Tecnologias Utilizadas
**DockerFile**: Utilizei o Docker para facilitar o processo de empacotamento e distribuição da aplicação. O DockerFile é responsável por definir os passos necessários para criar uma imagem Docker contendo a aplicação.

**Kubernetes**: A escolha do Kubernetes se deve a um pré requisito de aceite do desafio mas de qualquer forma iria utiliza-lo como plataforma de orquestração de contêineres para implantar e gerenciar minha aplicação em um ambiente de produção, por conta do conhecimento que eu tenho com a ferramenta, alem dele oferecer escalabilidade, resiliência e facilidade de gerenciamento.

**Minikube**: Para facilitar o desenvolvimento e teste local, optei por utilizar o Minikube, que me permite executar um cluster Kubernetes localmente, simulando assim um ambiente de produção

**Grafana e Prometheus**: Para monitoramento e métricas da aplicação, integramos o Grafana e o Prometheus ao ambiente construido. O Prometheus é responsável por coletar métricas da aplicação e o Grafana fornece visualizações e dashboards para análise e monitoramento em tempo real.

## Pensamentos
- A ideia inical é colocar para rodar dentro de um container
- Após a ideia inicial ser feita já coloquei pra rodar em um cluster Kubernetes usando um Minikube local
- Agora que eu tenho um cluster Kubernetes onde a aplicação principal esta rodando, coloquei um grafana para rodar dentro deste cluster
- O proximo passo é implementar o Prometheus para assim exportar as metricas da aplicação dentro do Grafana
- Grafana e Prometheus foram implementados e estão rodando dentro do cluster
- Futuramente quero implementar o zabbix como ferramenta central de monitoramento, gerando assim alertas caso seja identificado erros que estão vindo do Prometheus.
- Proximo passo acredito que eu vou criar a pipeline CI/CD com Github Actions