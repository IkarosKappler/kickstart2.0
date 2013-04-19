8class CreatePersonWidget < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'PersonWidget',
      type: 'publication',
      title: 'Widget: Person',
      attributes: [
        {:name=>"sort_key", :type=>:string, :title=>"Sort key"},
        {:name=>"person", :type=>:string, :title=>"Person identifier"},
      ],
      preset_attributes: {},
      mandatory_attributes: []
    )
  end
end