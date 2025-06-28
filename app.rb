# frozen_string_literal: true

require 'sinatra'

get '/' do
  @title = 'fernandojose.dev'
  erb :home, layout: :page
end

get '/about' do
  @title = 'sobre'
  erb :about, layout: :page
end

get '/projects' do
  @title = 'projetos'
  'Precisa implementar'
end
