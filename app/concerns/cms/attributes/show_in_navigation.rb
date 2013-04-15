module Cms
  module Attributes
    # This is a boolean attribute concern. It should be included via
    # +include Cms::Attributes::ShowInNavigation+
    # in all CMS models that use this attribute.
    module ShowInNavigation
      def show_in_navigation
        self[:show_in_navigation] || 'Yes'
      end

      def show_in_navigation?
        show_in_navigation == 'Yes'
      end
    end
  end
end