module ResponsiveRedmine
  module Hooks
    class BaseLayoutHook < Redmine::Hook::ViewListener
      render_on :view_layouts_base_html_head, partial: 'layouts/base_html_head'
      render_on :view_layouts_base_body_bottom, partial: 'layouts/base_body_bottom'
    end
  end
end
