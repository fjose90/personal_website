require 'sinatra'

get '/' do
    @title = 'fernandojose.dev'
    erb :index, layout: :page
end
