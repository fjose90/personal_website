require 'rack/test'
require 'rspec'
require 'nokogiri'
require_relative '../app'

ENV['RACK_ENV'] = 'test'

RSpec.describe 'Página principal' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def doc(response)
    Nokogiri::HTML(response.body)
  end

  it 'retorna com sucesso e contém um h1 e o título correto' do
    get '/'

    expect(last_response).to be_ok

    # Verifica se tem um <h1>
    expect(doc(last_response).at_css('h1')).not_to be_nil

    # Verifica o conteúdo da <title>
    title = doc(last_response).at_css('title')&.content
    expect(title).to eq('fernandojose.dev')
  end
end
