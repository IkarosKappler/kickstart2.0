module Cms
  module Attributes
    # This is a string attribute concern. It should be included via
    # +include Cms::Attributes::SortKey+
    # in all CMS models that use this attribute.
    module SortKey
      def sort_key
        self[:sort_key] || ''
      end
    end
  end
end