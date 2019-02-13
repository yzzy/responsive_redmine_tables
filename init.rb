reloader = defined?(ActiveSupport::Reloader) ? ActiveSupport::Reloader : ActionDispatch::Callbacks
reloader.to_prepare do
  require 'responsive_redmine'
#  paths = '/lib/responsive_redmine/{patches/*_patch,hooks/*_hook}.rb'
#  Dir.glob(File.dirname(__FILE__) + paths).each do |file|
#    require_dependency file
#  end
end

#Rails.application.config.eager_load_paths += Dir.glob("#{Rails.application.config.root}/plugins/responsive_redmine/{lib,app/models,app/controllers}")

Redmine::Plugin.register :responsive_redmine do
  name 'Responsive Redmine'
  author 'Alexander Abramov'
  description 'Responsive tables for Redmine'
  version '0.1.0'
  url 'https://github.com/yzzy/responsive_redmine'
  author_url 'https://github.com/yzzy'
end
