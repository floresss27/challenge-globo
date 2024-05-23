# Considerações Gerais

Você deverá subir esse projeto no github (gitlab ou similares) e todos os seus commits devem estar registrados, pois queremos ver como você trabalha.

A escolha de tecnologias é livre para a resolução do problema. Utilize os componentes e serviços que melhor domina pois a apresentação na entrega do desafio deverá ser como uma aula em que você explica em detalhes cada decisão que tomou.

Registre tudo: testes que foram executados, ideias que gostaria de implementar se tivesse tempo (explique como você as resolveria, se houvesse tempo), decisões que foram tomadas e seus porquês, arquiteturas que foram testadas e os motivos de terem sido modificadas ou abandonadas. Crie um arquivo COMMENTS.md ou HISTORY.md no repositório para registrar essas reflexões e decisões.


# O Problema

O desafio que você deve resolver é a implantação da aplicação de Comentários em versão API (backend) usando ferramentas open source da sua preferência.

Você precisa criar o ambiente de execução desta API com o maior número de passos automatizados possível, inclusive a esteira de deploy.

A aplicação é uma API REST que está disponível neste repositório. Através dela os internautas enviam comentários em texto de uma máteria e acompanham o que outras pessoas estão falando sobre o assunto em destaque. O funcionamento básico da API consiste em uma rota para inserção dos comentários e uma rota para listagem.

Os comandos de interação com a API são os seguintes:

* Start da app
```bash
cd app
gunicorn --log-level debug api:app
```

* Criando e listando comentários por matéria
```bash
# matéria 1
curl -sv localhost:8000/api/comment/new -X POST -H 'Content-Type: application/json' -d '{"email":"alice@example.com","comment":"first post!","content_id":1}'
curl -sv localhost:8000/api/comment/new -X POST -H 'Content-Type: application/json' -d '{"email":"alice@example.com","comment":"ok, now I am gonna say something more useful","content_id":1}'
curl -sv localhost:8000/api/comment/new -X POST -H 'Content-Type: application/json' -d '{"email":"bob@example.com","comment":"I agree","content_id":1}'

# matéria 2
curl -sv localhost:8000/api/comment/new -X POST -H 'Content-Type: application/json' -d '{"email":"bob@example.com","comment":"I guess this is a good thing","content_id":2}'
curl -sv localhost:8000/api/comment/new -X POST -H 'Content-Type: application/json' -d '{"email":"charlie@example.com","comment":"Indeed, dear Bob, I believe so as well","content_id":2}'
curl -sv localhost:8000/api/comment/new -X POST -H 'Content-Type: application/json' -d '{"email":"eve@example.com","comment":"Nah, you both are wrong","content_id":2}'

# listagem matéria 1
curl -sv localhost:8000/api/comment/list/1

# listagem matéria 2
curl -sv localhost:8000/api/comment/list/2
```

# O que será avaliado na sua solução?

- Automação e configuração da Infraestrutura (IaC);
- A entrega e integração contínua (CI/CD);
- Deploy da solução em ambiente Kubernetes
    - local (Minikube, kind, k3s ou similar);
    - ou cloud (GCP, AWS, Azure...)
- Manifestos de Deploy, Service e Ingress(se aplicável)
- Monitoramento dos serviços e métricas da aplicação;
- Criatividade;
- Resultados alcançados.

# Diferenciais

- Desenho da arquitetura da aplicação;
- Subir a aplicação em um cluster kubernetes (local ou cloud);
- Rota de status que retorne o texto “ok”;
- Todas as rotas metrificadas;
- Dashboards (grafana por exemplo) com gráficos próximos ao tempo real;
- Deverá ser acessível pela url http://comments.devops-challenge.globo.local;
- A aplicação deverá passar por um teste de carga.

# Dicas

- Use ferramentas e bibliotecas open source, mas documente as decisões e porquês;
- Automatize o máximo possível;
- Em caso de dúvidas, pergunte.
