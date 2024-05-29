# Explicações/Pensamentos

### Arquitetura da Aplicação
Decidi adotar uma arquitetura baseada em microserviços para a aplicação de Comentários em versão API. Optei por uma estrutura modularizada visando alcançar alta escalabilidade, facilidade de manutenção e adaptabilidade às necessidades futuras.Nessa arquitetura, um único serviço é responsável por gerenciar todos os aspectos relacionados a API, garantindo coesão e facilitando a evolução da aplicação.

### Tecnologias Utilizadas
**DockerFile**: Utilizei o Docker para facilitar o processo de empacotamento e distribuição da aplicação. O DockerFile é responsável por definir os passos necessários para criar uma imagem Docker contendo a aplicação.

**Kubernetes no GCP**: Escolhi o Kubernetes como plataforma de orquestração de contêineres devido ao seu pré-requisito no desafio e por suas características de escalabilidade, resiliência e facilidade de gerenciamento. Inicialmente, utilizei o Minikube para desenvolvimento local e, posteriormente, migrei para um cluster Kubernetes no Google Cloud Platform (GCP) para simular um ambiente de produção.

**Grafana e Prometheus**: Para monitoramento e métricas da aplicação, integrei o Grafana e o Prometheus ao ambiente construido. O Prometheus é responsável por coletar métricas da aplicação e o Grafana fornece visualizações e dashboards para análise e monitoramento em tempo real.

**Terraform**: Optei por integrar o Terraform ao projeto para automatizar a criação e gerenciamento da infraestrutura de maneira escalável e consistente, o Terraform simplificou a gestão do cluster Kubernetes no GCP, proporcionando uma maneira eficiente de provisionar e manter os recursos necessários para a aplicação.

**Github Actions**: A implementação do Github Actions foi escolhida para estabelecer uma pipeline de integração contínua e entrega contínua (CI/CD) para o projeto, pude automatizar tarefas como o build e o push da aplicação, garantindo um ciclo de desenvolvimento mais ágil e confiável. Além disso, a integração nativa com o GitHub permitiu uma configuração simplificada e uma boa integração com o repositório de código existente.

**Teste de carga**: Desenvolvi scripts personalizados para realizar testes de carga na aplicação, esses scripts foram elaborados para simular o comportamento de uma grande quantidade de usuários acessando a API simultaneamente, esta abordagem permitiu avaliar a capacidade da aplicação em lidar com um alto volume de acessos simultâneos, proporcionando métricas valiosas sobre seu desempenho em condições reais de uso, além disso, os resultados desses testes foram integrados ao Grafana, permitindo uma visualização detalhada das métricas de desempenho e auxiliando na identificação de possíveis áreas de melhoria.

## Pensamentos
- A ideia inical é colocar para rodar dentro de um container;
- Após a ideia inicial ser feita já coloquei pra rodar em um cluster Kubernetes usando um Minikube local;
- Agora que eu tenho um cluster Kubernetes onde a aplicação principal esta rodando, coloquei um grafana para rodar dentro deste cluster;
- O proximo passo é implementar o Prometheus para assim exportar as metricas da aplicação dentro do Grafana;
- Grafana e Prometheus foram implementados e estão rodando dentro do cluster;
- Futuramente quero implementar o zabbix como ferramenta central de monitoramento, gerando assim alertas caso seja identificado erros que estão vindo do Prometheus;
- O meu próximo passo seria, criar a pipeline CI/CD com Github Actions, mas ainda estou ponderando sobre como realizar a construção da pipeline. Acredito que devo focar na construção do CI/CD para a API, em vez de querer integrar todos os serviços como Grafana, Prometheus e Minikube de uma vez em um É por isso que estava demorando um pouco para progredir, pois ainda não havia definido o caminho a seguir;
- Buscando deixar o mais proximo de um ambiente de produção, estou subindo um cluster kubernetes no GCP (vou subir manualmente de inicio, pois nunca utilizei o GCP);
- Apos eu conseguir subir o cluster e realizar o deploy da aplicação dentro dele, eu atualizo a parte das tecnologias utilizadas;
- Foi realizada com sucesso a criação do cluster Kubernetes dentro do GCP;
- Planejo realizar a criação da rota de status que retorne o texto “ok”;
- Realizada a criação da rota status;
- Vou realizar a criação de 3 scripts para simular as requisições dos usuários
- Proximo passo é realizar a criação do CI/CD, dessa forma qualquer modificação na API após o commit sera gerada uma nova imagem, sendo assim removendo mais um processo que antes era manual;
- Vou realizar a criação dos arquivos do terraform para automatizar a subida/deleção de nodes no cluster Kubernetes;
- Os arquivos do terraform foram criados;