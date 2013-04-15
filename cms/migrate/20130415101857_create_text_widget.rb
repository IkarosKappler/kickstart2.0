class CreateTextWidget < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'TextWidget',
      type: 'publication',
      title: 'Widget: Text',
      attributes: [
        {:name=>"sort_key", :type=>:string, :title=>"Sort key"},
      ],
      preset_attributes: {},
      mandatory_attributes: []
    )
  end
end