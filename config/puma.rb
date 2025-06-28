# frozen_string_literal: true

port ENV.fetch('PORT', 9292)
environment ENV.fetch('RACK_ENV', 'production')

workers 0
threads 1, 6

preload_app!
