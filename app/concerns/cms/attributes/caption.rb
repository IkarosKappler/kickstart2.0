module Cms
  module Attributes
    # This is a string attribute concern. It should be included via
    # +include Cms::Attributes::Caption+
    # in all CMS models that use this attribute.
    module Caption
      def caption
        self[:caption] || ''
      end
    end
  end
end