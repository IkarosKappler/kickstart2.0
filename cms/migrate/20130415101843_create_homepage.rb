class CreateHomepage < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'Homepage',
      type: 'publication',
      title: 'Page: Homepage',
      attributes: [
        {:name=>"show_in_navigation", :type=>:enum, :title=>"Show in Navigation", :values=>["Yes", "No"]},
        {:name=>"sort_key", :type=>:string, :title=>"Sort key"},
        {:name=>"error_not_found_page_link", :type=>:linklist, :title=>"Error Not Found Page", :max_size=>1},
        {:name=>"login_page_link", :type=>:linklist, :title=>"Login Page", :max_size=>1},
        {:name=>"locale", :type=>:string, :title=>"Locale"},
        {:name=>"main_content", :type=>"widget", :title=>"Main content"},
      ],
      preset_attributes: {},
      mandatory_attributes: []
    )
  end
end