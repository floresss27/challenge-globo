# Explicações/Pensamentos

## Configuração Inicial do Ambiente

### Docker

- **Decisão**: Utilizar Docker para criar um ambiente de desenvolvimento isolado e consistente.
- **Motivação**: Docker garante que a aplicação rodará da mesma forma em qualquer máquina ou ambiente, eliminando problemas de "funciona na minha máquina".
- **Implementação**: Criar um `Dockerfile` para a aplicação Flask, definindo as dependências e configurando a exposição da porta 8000.

### Rodando o container

- **Motivação**: Facilitar a criação de um ambiente de execução consistente e reprodutível.
- **Passos**:
  1.  **Buildando o container**: Para buildar o seu projeto dentro de um container, abra o terminal dentro do repositorio que contem o seu Dockerfile e digite `docker build <nome do seu container>:<versao>`.
  2. **Rodando o container**: Após buildar o seu projeto basta digitar `docker run -p <porta de entrada:porta do container> <nome do seu container que foi dado no momento do build>:<versao> indicada no momento do build`.

### Minikube

- **Decisão**: Optei por utilizar o Minikube como minha solução de Kubernetes local por se tratar da ferramenta que eu tenho mais familiaridade.

- **Implementação**: Apos realizar a instalação do Minikube que você pode seguir através da documentação oficial https://minikube.sigs.k8s.io/docs/start/ basta digitar no terminal de sua maquina o seguinte comando `minikube start`, caso queira ver visualmente ou até mesmo gereciar o cluster de forma mais facil basta `minikube dashboard`.

### Kubernetes

- **Motivação**: O Kubernetes oferece capacidades avançadas de orquestração de contêineres, proporcionando escalabilidade e gerenciamento simplificado.
- **Passos**:
  1. **Criação de arquivos de maniesto**: Crie arquivos YAML que descrevem os recursos que você deseja implantar, como deployments, services, etc.
  2. **Aplicação dos recursos com kubectl apply**: Use o comando kubectl apply -f <arquivo.yaml> para aplicar os recursos definidos no arquivo YAML ao cluster Kubernetes. Neste caso você pode executar `kubectl apply -f deployment.yaml -f service.yaml`.
  3. **Verificação da implantação**: Após aplicar os recursos, você pode verificar se foram implantados corretamente usando o comando kubectl get <recurso> para listar os recursos criados. Por exemplo, `kubectl get pods` para listar os pods implantados.
  4. **Atualização dos recursos**: Se você precisar atualizar os recursos após fazer alterações nos arquivos de manifesto, basta aplicar os arquivos atualizados novamente usando o mesmo comando `kubectl apply -f nome do arquivo .yaml que foi alterado`.