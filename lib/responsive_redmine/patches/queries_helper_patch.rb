require_dependency 'queries_helper'

module ResponsiveRedmine
  module Patches
    module QueriesHelperPatch
      def self.included(base)
        base.send(:include, InstanceMethods)
        base.class_eval do
          alias_method_chain :column_header, :data_labels
        end
      end

      module InstanceMethods
        def column_header_with_data_labels(query, column, options={})
          res = column_header_without_data_labels(query, column, options)
          res.sub(/^<th/, "\\0 data-label=#{column.caption}").html_safe
        end
      end

    end
  end
end

base = QueriesHelper
patch = ResponsiveRedmine::Patches::QueriesHelperPatch
base.send(:include, patch) unless base.included_modules.include?(patch)
