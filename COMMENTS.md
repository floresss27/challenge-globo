# Explicações/Pensamentos

## Configuração Inicial do Ambiente

### Docker

- **Decisão**: Utilizar Docker para criar um ambiente de desenvolvimento isolado e consistente.
- **Motivação**: Docker garante que a aplicação rodará da mesma forma em qualquer máquina ou ambiente, eliminando problemas de "funciona na minha máquina".
- **Implementação**: Criar um `Dockerfile` para a aplicação Flask, definindo as dependências e configurando a exposição da porta 8000.

### Criação do Dockerfile

- **Motivação**: Facilitar a criação de um ambiente de execução consistente e reprodutível.
- **Passos**:
  1. **Imagem Base**: Escolhida a imagem Python:3.7.4-alpine3.10 devido a versão python utilizada no projeto e alpine por ser uma das imagens mais leves atualmente.
  2. **Diretório de Trabalho**: Definido a pasta `/app` como o diretório de trabalho dentro do contêiner.
  3. **Copiar Arquivos**: Foi copiado todos os arquivos do diretório atual para o diretório de trabalho no contêiner.
  4. **Instalar Dependências**: Instaladas as libs utilizadas sem usar o cache para reduzir o tamanho da imagem e utilizando a boa pratica de declarar as libs no requirements.
  5. **Acessando o conteúdo da Aplicação**: Acessando a pasta `/app/app` onde esta localizada o arquivo central da API.
  6. **Comando para Rodar a Aplicação**: Definido o comando para rodar a aplicação inicialmente como `python api.py`.