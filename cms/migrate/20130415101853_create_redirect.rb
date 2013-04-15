class CreateRedirect < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'Redirect',
      type: 'publication',
      title: 'Redirect',
      attributes: [
        {:name=>"show_in_navigation", :type=>:enum, :title=>"Show in Navigation", :values=>["Yes", "No"]},
        {:name=>"sort_key", :type=>:string, :title=>"Sort key"},
        {:name=>"redirect_link", :type=>:linklist, :title=>"Redirect link", :max_size=>1},
      ],
      preset_attributes: {},
      mandatory_attributes: []
    )
  end
end