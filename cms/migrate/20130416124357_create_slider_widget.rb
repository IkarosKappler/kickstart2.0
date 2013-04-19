class CreateSliderWidget < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'SliderWidget',
      type: 'publication',
      title: 'Widget: Slider',
      attributes: [
        {:name=>"sort_key", :type=>:string, :title=>"Sort key"},
        {:name=>"images", :type=>:linklist, :title=>"Images"},
      ],
      preset_attributes: {},
      mandatory_attributes: []
    )
  end
end