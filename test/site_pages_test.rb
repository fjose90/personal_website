# frozen_string_literal: true

require_relative 'test_helper'

class SitePesonalTest < Minitest::Test
  include Rack::Test::Methods
  def app
    Sinatra::Application
  end

  def test_index
    get '/'
    assert last_response.ok?
    assert doc(last_response).at_css('h1')
    title_content = doc(last_response).at_css('title').content
    assert_equal 'fernandojos.dev', title_content
  end
end
