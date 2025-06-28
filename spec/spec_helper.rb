# frozen_string_literal: true

# Inicia SimpleCov para medir cobertura de código (antes de qualquer require)
require 'simplecov'
SimpleCov.start do
  add_filter '/spec/' # ignora testes na cobertura
end

# Mostra a cobertura no terminal ao fim dos testes (opcional)
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
                                                                 SimpleCov::Formatter::HTMLFormatter
                                                               ])

# Ambiente de teste
ENV['RACK_ENV'] ||= 'test'

# Requer gems essenciais
require 'rack/test'
require 'rspec'

# Carrega automaticamente todos os arquivos em lib/ (se usar estrutura modular)
# Dir['./lib/**/*.rb'].sort.each { |f| require f }

RSpec.configure do |config|
  config.include Rack::Test::Methods

  # Exibe mensagens de falha mais claras
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  # Para rodar apenas os testes com foco quando presente (f: true)
  config.filter_run_when_matching :focus

  # Ordenação dos testes aleatória para detectar dependências ocultas
  config.order = :random
  Kernel.srand config.seed

  # Persistência de status de teste (útil para --only-failures)
  config.example_status_persistence_file_path = '.rspec_status'
end
