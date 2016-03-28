require 'roda'
require 'slim'

class KivaTeamView < Roda
  use Rack::Session::Cookie, :secret => ENV['SECRET']

  plugin :render, engine: 'slim'

  route do |r|
    # GET / request
    r.root do
      r.redirect "/dashboard"
    end

    r.on "dashboard" do
      r.get do
        view("dashboard")
      end
    end
  end
end
