module Cms
  module Attributes
    # This is a linklist attribute concern. It should be included via
    # +include Cms::Attributes::LinkTo+
    # in all CMS models that use this attribute.
    module LinkTo
      def link_to
        self[:link_to] || RailsConnector::LinkList.new(nil)
      end

      def link_to?
        link_to.present?
      end
    end
  end
end