reloader = defined?(ActiveSupport::Reloader) ? ActiveSupport::Reloader : ActionDispatch::Callbacks
reloader.to_prepare do
  require 'responsive_redmine_tables'
end

Redmine::Plugin.register :responsive_redmine_tables do
  name 'Responsive Redmine tables'
  author 'Alexander Abramov'
  description 'Responsive tables for Redmine'
  version '0.1.7'
  url 'https://github.com/yzzy/responsive_redmine_tables'
  author_url 'https://github.com/yzzy'
end
