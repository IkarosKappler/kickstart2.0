module Cms
  module Attributes
    # This is a linklist attribute concern. It should be included via
    # +include Cms::Attributes::Images+
    # in all CMS models that use this attribute.
    module Images
      def images
        self[:images] || RailsConnector::LinkList.new(nil)
      end

      def images?
        images.present?
      end
    end
  end
end