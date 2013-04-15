module Cms
  module Attributes
    # This is a string attribute concern. It should be included via
    # +include Cms::Attributes::Locale+
    # in all CMS models that use this attribute.
    module Locale
      def locale
        self[:locale] || ''
      end
    end
  end
end