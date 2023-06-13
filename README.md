# Logstash UDP

O projeto Logstash UDP é um serviço projetado para receber logs via protocolo UDP e encaminhá-los para o Amazon Elasticsearch e o New Relic para análise e monitoramento.

## Requisitos

- Docker instalado (Versão 19.03.0+)
- Uma conta no Amazon AWS (para Amazon Elasticsearch)
- Uma conta no New Relic

## Como usar

Para usar este projeto, você precisa seguir os passos abaixo:

1. Clone o repositório para o seu local

```bash
git clone <url do repositório>
```

2. Entre no diretório do projeto

```bash
cd logstash-udp
```

3. Crie um arquivo .env na raiz do projeto e preencha as seguintes variáveis ​​de ambiente:

```bash
ELASTICSEARCH_HOST=your_elasticsearch_host
REGION=your_region
AWS_ACCESS_KEY=your_aws_access_key
AWS_SECRET_KEY=your_aws_secret_key
NEW_RELIC_INSIGHTS_KEY=your_new_relic_insights_key
NEW_RELIC_ACCOUNT_ID=your_new_relic_account_id
NEW_RELIC_EVENT_TYPE=your_new_relic_event_type
```

5. Inicie o contêiner Docker usando o seguinte comando:

```bash
docker run -p 5044:5044/udp -d logstash-udp
```

#### Agora, o Logstash deve estar em execução e pronto para receber logs via UDP na porta 5044.

## Contribuindo

Pull requests são bem-vindos. Para grandes mudanças, abra uma issue primeiro para discutir o que você gostaria de mudar.