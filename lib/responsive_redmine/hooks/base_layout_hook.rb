module ResponsiveRedmine
  module Hooks
    class BaseLayoutHook < Redmine::Hook::ViewListener
      render_on :view_layouts_base_html_head, partial: 'layouts/base_html_head'
    end
  end
end
