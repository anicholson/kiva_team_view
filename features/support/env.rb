require 'bundler/setup'

require 'capybara'
require 'capybara/webkit'
require 'capybara/dsl'
require 'rspec'
require 'pry'

require_relative '../../kiva_team_view'

Dir.glob("#{File.dirname(__FILE__)}/../../spec/page_models/*.rb").each do |f|
  require_relative f
end

Capybara.javascript_driver = :webkit

Capybara.configure do |config|
  config.run_server = true
  config.app        = KivaTeamView
end

Capybara::Webkit.configure do |config|
  config.allow_unknown_urls
end
