# Congela a string para melhorar performance e evitar modificações acidentais
# (Boa prática nas versões mais novas do Ruby)
# frozen_string_literal: true

# Fonte oficial para baixar as gems Ruby
source 'https://rubygems.org'

# Define a versão mínima do Ruby necessária para o projeto
ruby '3.4.4' # Altere aqui se estiver usando uma versão diferente do Ruby

# ==== Gems principais (para produção e desenvolvimento) ====

# Puma é um servidor HTTP multi-thread, usado para rodar o app em produção
gem 'puma', '~> 6.4'

# Rackup permite iniciar o app com um comando tipo 'rackup', usando o arquivo config.ru
gem 'rackup', '~> 2.2'

# Sinatra é o framework web minimalista usado no projeto
gem 'sinatra', '~> 4.1'

# ==== Grupo de desenvolvimento ====
group :development do
  # Rerun observa os arquivos do projeto e reinicia o servidor automaticamente sempre que um arquivo muda
  # Útil apenas no desenvolvimento local
  gem 'rerun', '~> 0.14.0'
  # RuboCop é uma ferramenta de linting e análise de estilo para Ruby
  # Ajuda a manter o código limpo e seguindo boas práticas
  gem 'rubocop', '~> 1.68'
end

# ==== Grupo de teste ====
group :test do
  # Nokogiri é uma biblioteca para parse e manipulação de XML/HTML
  # Muito usada para validar respostas HTML em testes
  gem 'nokogiri', '~> 1.16'

  # Rack-Test permite simular requisições HTTP contra o app Sinatra
  # Usado para testar rotas sem precisar levantar um servidor real
  gem 'rack-test', '~> 2.1'

  # Rake é um sistema de automação de tarefas
  # Aqui geralmente é usado para criar tasks de build ou rodar os testes
  gem 'rake', '~> 13.2'

  gem 'minitest', '~> 5.8'
  gem 'minitest-reporters'
end

group :production do
end
