# frozen_string_literal: true

require 'rspec'
require 'rack/test'
require 'nokogiri'
require_relative '../app'

RSpec.describe 'Página SOBRE(about)' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def doc(response)
    Nokogiri::HTML(response.body)
  end

  it 'retorna com sucesso e contém <h1> e <title>' do
    get '/about'

    expect(last_response).to be_ok

    parsed_html = doc(last_response)
    expect(parsed_html.at_css('h2')).not_to be_nil
    expect(parsed_html.at_css('h2').text).to eq('about')

    # Verifica o conteúdo da <title>
    title = parsed_html.at_css('title').content
    expect(title).to eq('sobre')
  end
end
