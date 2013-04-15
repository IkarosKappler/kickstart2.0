module Cms
  module Attributes
    # This is a linklist attribute concern. It should be included via
    # +include Cms::Attributes::Source+
    # in all CMS models that use this attribute.
    module Source
      def source
        self[:source] || RailsConnector::LinkList.new(nil)
      end

      def source?
        source.present?
      end
    end
  end
end