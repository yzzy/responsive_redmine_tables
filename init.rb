ActionDispatch::Callbacks.to_prepare do
  require 'responsive_redmine'
end

Redmine::Plugin.register :responsive_redmine do
  name 'Responsive Redmine'
  author 'Alexander Abramov'
  description 'Responsive tables for Redmine'
  version '0.1.0'
  url 'https://github.com/yzzy/responsive_redmine'
  author_url 'https://github.com/yzzy'
end
