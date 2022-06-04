require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

# catch the incorrect pg version check, replace it with one that will pass
module Kernel
  def gem_with_pg_fix(dep, *reqs)
    if dep == "pg" && reqs == ["~> 0.15"]
      reqs = ["~> 1.0"]
    end
    gem_without_pg_fix(dep, *reqs)
  end

  alias_method_chain :gem, :pg_fix
end
# pg 1.0 gem has removed these constants, but 4.2 ActiveRecord still expects them
PGconn   = PG::Connection
PGresult = PG::Result
PGError  = PG::Error

module NationStatesClone
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
  end
end
