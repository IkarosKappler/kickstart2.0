class CreateSearchPageExample < ::RailsConnector::Migration
  def up
    path = '/website/en/_configuration/search'

    create_obj(
      _path: path,
      _obj_class: 'SearchPage',
      title: 'Search Page Example',
      'show_in_navigation' => 'Yes'
    )

    attributes = get_obj_class('Homepage')['attributes']
    attributes.map do |definition|
      definition.delete('id')

      definition.delete_if do |_, value|
        value.nil?
      end
    end
    attributes << {
      name: 'search_page_link',
      type: :linklist,
      title: 'Search Page',
      max_size: 1,
    }

    update_obj_class('Homepage', attributes: attributes)

    update_obj(
      Obj.find_by_path('/website/en').id,
      'search_page_link' => [{ url: path }]
    )
  end
end