# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.4.4'

# === Gems principais (produção e desenvolvimento) ===
gem 'dotenv', '~> 2.8', require: 'dotenv/load'
gem 'puma', '~> 6.4'
gem 'rackup', '~> 2.2'
gem 'sinatra', '~> 4.1'

group :development do
  gem 'rerun', '~> 0.14.0'
  gem 'rubocop', '~> 1.68'
end

group :test do
  gem 'nokogiri', '~> 1.16'
  gem 'rack-test', '~> 2.1'
  gem 'rake', '~> 13.2'
  gem 'rspec', '~> 3.13'
  gem 'simplecov', '~> 0.22.0', require: false
end
