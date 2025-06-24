# frozen_string_literal: true

require 'sinatra'
disable :protection
get '/' do
    @title = 'fernandojose.dev'
    erb :index, layout: :page
end
