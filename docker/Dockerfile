FROM logstash:6.8.23

RUN logstash-plugin install logstash-output-amazon_es

COPY ./docker/logstash/logstash.conf /etc/logstash/conf.d/
COPY ./docker/logstash/logstash.conf /usr/share/logstash/config/logstash.yml

CMD ["logstash", "-f", "/etc/logstash/conf.d/logstash.conf"]