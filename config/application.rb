require File.expand_path('../boot', __FILE__)

require 'rails'

require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'
require 'sprockets/railtie'

Bundler.require(*Rails.groups)

module Recall
  class Application < Rails::Application
    config.autoload_paths += Dir.glob("#{config.root}/app/policies/*")
    config.autoload_paths += Dir.glob("#{config.root}/app/interactions/*")
  end
end
