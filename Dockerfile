# Usa imagem oficial leve do Ruby
FROM ruby:3.4.4-slim

# Instala dependências necessárias para gems nativas (como nokogiri, pg etc.)
RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends build-essential libpq-dev git curl locales && \
    rm -rf /var/lib/apt/lists/*


# Configura locale para UTF-8
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && locale-gen

ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8

# Define diretório da aplicação
WORKDIR /app

# Copia só os arquivos de dependência para aproveitar cache
COPY Gemfile Gemfile.lock ./

# Garante que Gemfile e lock estão sincronizados
# Instala gems para produção
RUN bundle config --global frozen 1 && bundle config set without 'development test' && bundle install --jobs 4 --retry 3

# Copia o restante da aplicação
COPY . .

# Define variáveis padrão
ENV RACK_ENV=production
ENV PORT=9292

# Expõe a porta usada pelo Puma
EXPOSE 9292

# Inicia o app com Puma e config personalizado
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
