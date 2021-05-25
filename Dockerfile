FROM jruby as build

COPY . .
RUN gem install bundler:1.17.3
RUN ruby -S bundle install
RUN ruby -S bundle exec rake vendor
RUN gem build logstash-output-loki.gemspec

FROM logstash:7.9.3
COPY --from=build logstash-output-loki-tenants-1.0.3.gem .
RUN /usr/share/logstash/bin/logstash-plugin install --no-verify --local logstash-output-loki-tenants-1.0.3.gem