# frozen_string_literal: true

require 'sinatra'

configure :production do
  # Ativa o logging interno do Sinatra somente no ambiente de produção
  # Isso faz com que mensagens de requisição, erros e avisos sejam exibidas no console
  # Serviços de hospedagem como Render capturam esses logs e exibem no dashboard
  enable :logging
end

get '/' do
  @title = 'fernandojose.dev'
  erb :index, layout: :page
end
